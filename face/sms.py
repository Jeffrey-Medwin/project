from twilio.rest import Client

def sendSMS(name):
   account_sid = "ACed5dd0d65265247326751f90eb5e5e64"
   auth_token = "bfa1d55ee82e6a86d830e436376f6f89"
   client = Client(account_sid, auth_token)
   message = client.messages.create(
                             body = name+' Spotted out side the class',
                             from_ = '+12407700020',
                             to = '+919786251495'
                         )
