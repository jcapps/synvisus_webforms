Imports System.Net.Mail

Partial Class Mobile_Default
    Inherits System.Web.UI.Page

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

        Using mailMessage As New MailMessage

            mailMessage.From = New MailAddress(from)
            mailMessage.To.Add("ccapps@synvisus.com")
            mailMessage.CC.Add("jamesmcapps@gmail.com")
            mailMessage.CC.Add("thcapps@outlook.com")
            mailMessage.Subject = subject
            mailMessage.Body = body

            mailMessage.IsBodyHtml = True
            mailMessage.Priority = MailPriority.Normal

            Using smtpClient As New SmtpClient()
                Try
                    smtpClient.Send(mailMessage)
                Catch smtpExc As System.Net.Mail.SmtpException
                    Response.Write("Message failed to send")
                End Try
            End Using


        End Using

    End Sub
End Class
