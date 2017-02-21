Imports System.Net.Mail
Imports System.Configuration

Partial Class Contact
    Inherits Page

    Sub SendButton_Click(ByVal sender As Object, ByVal e As EventArgs)

        Dim clientName As String = FirstName.Text & " " & LastName.Text
        Dim clientEmail As String = Email.Text
        Dim clientSubject As String = "Synvisus web contact form: " & clientName & " <" & Email.Text & ">"
        Dim clientMessage As String = Body.Text

        SendMailMessage(clientEmail.Trim(), clientSubject.Trim(), clientMessage.Trim())

        FirstName.Text = ""
        LastName.Text = ""
        Email.Text = ""
        Body.Text = ""

    End Sub

    Sub SendMailMessage(ByVal from As String, ByVal subject As String, ByVal body As String)

        Dim email1 As String = ConfigurationManager.AppSettings.Get("Email1")
        Dim email2 As String = ConfigurationManager.AppSettings.Get("Email2")
        Dim email3 As String = ConfigurationManager.AppSettings.Get("Email3")

        Using mailMessage As New MailMessage

            mailMessage.From = New MailAddress(from)
            mailMessage.To.Add(email1)
            mailMessage.CC.Add(email2)
            mailMessage.CC.Add(email3)
            mailMessage.Subject = subject
            mailMessage.Body = body

            mailMessage.IsBodyHtml = True
            mailMessage.Priority = MailPriority.Normal

            Using smtpClient As New SmtpClient()
                Try
                    'smtpClient.Host = "smtp.gmail.com"
                    'smtpClient.EnableSsl = True
                    smtpClient.Send(mailMessage)
                Catch smtpExc As System.Net.Mail.SmtpException
                    Response.Write("Message failed to send")
                    'Catch ex As Exception
                End Try
            End Using


        End Using

    End Sub

End Class