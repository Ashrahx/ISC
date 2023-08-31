<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()>
Partial Class Form1
    Inherits System.Windows.Forms.Form

    'Form overrides dispose to clean up the component list.
    <System.Diagnostics.DebuggerNonUserCode()>
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        Try
            If disposing AndAlso components IsNot Nothing Then
                components.Dispose()
            End If
        Finally
            MyBase.Dispose(disposing)
        End Try
    End Sub

    'Required by the Windows Form Designer
    Private components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Windows Form Designer
    'It can be modified using the Windows Form Designer.  
    'Do not modify it using the code editor.
    <System.Diagnostics.DebuggerStepThrough()>
    Private Sub InitializeComponent()
        Label1 = New Label()
        txtCali1 = New TextBox()
        txtCali2 = New TextBox()
        txtCali3 = New TextBox()
        Button1 = New Button()
        Label2 = New Label()
        Label3 = New Label()
        Label4 = New Label()
        Label5 = New Label()
        txtStatus = New Label()
        txtProm = New Label()
        SuspendLayout()
        ' 
        ' Label1
        ' 
        Label1.AutoSize = True
        Label1.Font = New Font("Segoe UI", 19.8000011F, FontStyle.Bold, GraphicsUnit.Point)
        Label1.Location = New Point(193, 59)
        Label1.Name = "Label1"
        Label1.Size = New Size(413, 46)
        Label1.TabIndex = 0
        Label1.Text = "Sistema de calificaciones"
        ' 
        ' txtCali1
        ' 
        txtCali1.Location = New Point(214, 140)
        txtCali1.Name = "txtCali1"
        txtCali1.Size = New Size(125, 27)
        txtCali1.TabIndex = 1
        ' 
        ' txtCali2
        ' 
        txtCali2.Location = New Point(214, 191)
        txtCali2.Name = "txtCali2"
        txtCali2.Size = New Size(125, 27)
        txtCali2.TabIndex = 2
        ' 
        ' txtCali3
        ' 
        txtCali3.Location = New Point(214, 245)
        txtCali3.Name = "txtCali3"
        txtCali3.Size = New Size(125, 27)
        txtCali3.TabIndex = 3
        ' 
        ' Button1
        ' 
        Button1.Location = New Point(390, 298)
        Button1.Name = "Button1"
        Button1.Size = New Size(94, 29)
        Button1.TabIndex = 5
        Button1.Text = "Calcular"
        Button1.UseVisualStyleBackColor = True
        ' 
        ' Label2
        ' 
        Label2.AutoSize = True
        Label2.Location = New Point(110, 140)
        Label2.Name = "Label2"
        Label2.Size = New Size(98, 20)
        Label2.TabIndex = 6
        Label2.Text = "Calificación 1"
        ' 
        ' Label3
        ' 
        Label3.AutoSize = True
        Label3.Location = New Point(110, 191)
        Label3.Name = "Label3"
        Label3.Size = New Size(98, 20)
        Label3.TabIndex = 7
        Label3.Text = "Calificación 2"
        ' 
        ' Label4
        ' 
        Label4.AutoSize = True
        Label4.Location = New Point(110, 252)
        Label4.Name = "Label4"
        Label4.Size = New Size(98, 20)
        Label4.TabIndex = 8
        Label4.Text = "Calificación 3"
        ' 
        ' Label5
        ' 
        Label5.AutoSize = True
        Label5.Location = New Point(134, 303)
        Label5.Name = "Label5"
        Label5.Size = New Size(74, 20)
        Label5.TabIndex = 9
        Label5.Text = "Promedio"
        ' 
        ' txtStatus
        ' 
        txtStatus.AutoSize = True
        txtStatus.Font = New Font("Segoe UI", 12F, FontStyle.Bold, GraphicsUnit.Point)
        txtStatus.Location = New Point(379, 177)
        txtStatus.Name = "txtStatus"
        txtStatus.Size = New Size(0, 28)
        txtStatus.TabIndex = 10
        ' 
        ' txtProm
        ' 
        txtProm.AutoSize = True
        txtProm.Location = New Point(214, 307)
        txtProm.Name = "txtProm"
        txtProm.Size = New Size(0, 20)
        txtProm.TabIndex = 11
        ' 
        ' Form1
        ' 
        AutoScaleDimensions = New SizeF(8F, 20F)
        AutoScaleMode = AutoScaleMode.Font
        ClientSize = New Size(800, 450)
        Controls.Add(txtProm)
        Controls.Add(txtStatus)
        Controls.Add(Label5)
        Controls.Add(Label4)
        Controls.Add(Label3)
        Controls.Add(Label2)
        Controls.Add(Button1)
        Controls.Add(txtCali3)
        Controls.Add(txtCali2)
        Controls.Add(txtCali1)
        Controls.Add(Label1)
        Name = "Form1"
        Text = "Form1"
        ResumeLayout(False)
        PerformLayout()
    End Sub

    Friend WithEvents Label1 As Label
    Friend WithEvents txtCali1 As TextBox
    Friend WithEvents txtCali2 As TextBox
    Friend WithEvents txtCali3 As TextBox
    Friend WithEvents Button1 As Button
    Friend WithEvents Label2 As Label
    Friend WithEvents Label3 As Label
    Friend WithEvents Label4 As Label
    Friend WithEvents Label5 As Label
    Friend WithEvents txtStatus As Label
    Friend WithEvents txtProm As Label
End Class
