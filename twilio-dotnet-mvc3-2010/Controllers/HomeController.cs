using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Twilio;
using Twilio.TwiML;
using Twilio.TwiML.Mvc;

namespace twilio_dotnet.Controllers
{
    public class HomeController : TwilioController
    {
        TwilioRestClient client;

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Message(string to)
        {
            client = new TwilioRestClient(Settings.AccountSid, Settings.AuthToken);

            var result = client.SendSmsMessage(Settings.TwilioNumber, to, "Hello there! Your Twilio environment has been configured.");

            if (result.RestException != null)
            {
                return new System.Web.Mvc.HttpStatusCodeResult(500, result.RestException.Message);
            }

            return Content("Message inbound!");
        }

        public ActionResult Call(string to)
        {
            client = new TwilioRestClient(Settings.AccountSid, Settings.AuthToken);

            var result = client.InitiateOutboundCall(Settings.TwilioNumber, to, "http://twilio-elearning.herokuapp.com/starter/voice.php");

            if (result.RestException != null)
            {
                return new System.Web.Mvc.HttpStatusCodeResult(500, result.RestException.Message);
            }

            return Content("Call enroute!");
        }

        public ActionResult Hello()
        {
            var response = new TwilioResponse();
            response.Say("Hello there! You have successfully configured a web hook.");
            response.Say("Have fun with your Twilio development!", new { Voice = "woman" });
            return TwiML(response);
        }
    }
}
