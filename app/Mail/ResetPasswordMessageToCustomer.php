<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class ResetPasswordMessageToCustomer extends Mailable
{
    use Queueable, SerializesModels;

    public $subject;
    public $message;
    public $token;

    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct($subject,$message,$token)
    {
        $this->subject = $subject;
        $this->token = $token;
        $this->message = $message;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        return $this->markdown('front.email_body_reset_password_message_to_customer')->subject($this->subject);
    }
}
