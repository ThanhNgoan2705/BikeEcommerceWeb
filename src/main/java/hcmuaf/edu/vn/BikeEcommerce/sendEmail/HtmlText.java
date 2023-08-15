package hcmuaf.edu.vn.BikeEcommerce.sendEmail;

public class HtmlText {
    public static final String verifyCode = "<!DOCTYPE html>\n" +
            "<html>\n" +
            "<head>\n" +
            "\n" +
            "  <meta charset=\"utf-8\">\n" +
            "  <meta http-equiv=\"x-ua-compatible\" content=\"ie=edge\">\n" +
            "  <title>Email Confirmation</title>\n" +
            "  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n" +
            "  <style type=\"text/css\">\n" +
            "  /**\n" +
            "   * Google webfonts. Recommended to include the .woff version for cross-client compatibility.\n" +
            "   */\n" +
            "  @media screen {\n" +
            "    @font-face {\n" +
            "      font-family: 'Source Sans Pro';\n" +
            "      font-style: normal;\n" +
            "      font-weight: 400;\n" +
            "      src: local('Source Sans Pro Regular'), local('SourceSansPro-Regular'), url(https://fonts.gstatic.com/s/sourcesanspro/v10/ODelI1aHBYDBqgeIAH2zlBM0YzuT7MdOe03otPbuUS0.woff) format('woff');\n" +
            "    }\n" +
            "    @font-face {\n" +
            "      font-family: 'Source Sans Pro';\n" +
            "      font-style: normal;\n" +
            "      font-weight: 700;\n" +
            "      src: local('Source Sans Pro Bold'), local('SourceSansPro-Bold'), url(https://fonts.gstatic.com/s/sourcesanspro/v10/toadOcfmlt9b38dHJxOBGFkQc6VGVFSmCnC_l7QZG60.woff) format('woff');\n" +
            "    }\n" +
            "  }\n" +
            "  /**\n" +
            "   * Avoid browser level font resizing.\n" +
            "   * 1. Windows Mobile\n" +
            "   * 2. iOS / OSX\n" +
            "   */\n" +
            "  body,\n" +
            "  table,\n" +
            "  td,\n" +
            "  a {\n" +
            "    -ms-text-size-adjust: 100%; /* 1 */\n" +
            "    -webkit-text-size-adjust: 100%; /* 2 */\n" +
            "  }\n" +
            "  /**\n" +
            "   * Remove extra space added to tables and cells in Outlook.\n" +
            "   */\n" +
            "  table,\n" +
            "  td {\n" +
            "    mso-table-rspace: 0pt;\n" +
            "    mso-table-lspace: 0pt;\n" +
            "  }\n" +
            "  /**\n" +
            "   * Better fluid images in Internet Explorer.\n" +
            "   */\n" +
            "  img {\n" +
            "    -ms-interpolation-mode: bicubic;\n" +
            "  }\n" +
            "  /**\n" +
            "   * Remove blue links for iOS devices.\n" +
            "   */\n" +
            "  a[x-apple-data-detectors] {\n" +
            "    font-family: inherit !important;\n" +
            "    font-size: inherit !important;\n" +
            "    font-weight: inherit !important;\n" +
            "    line-height: inherit !important;\n" +
            "    color: inherit !important;\n" +
            "    text-decoration: none !important;\n" +
            "  }\n" +
            "  /**\n" +
            "   * Fix centering issues in Android 4.4.\n" +
            "   */\n" +
            "  div[style*=\"margin: 16px 0;\"] {\n" +
            "    margin: 0 !important;\n" +
            "  }\n" +
            "  body {\n" +
            "    width: 100% !important;\n" +
            "    height: 100% !important;\n" +
            "    padding: 0 !important;\n" +
            "    margin: 0 !important;\n" +
            "  }\n" +
            "  /**\n" +
            "   * Collapse table borders to avoid space between cells.\n" +
            "   */\n" +
            "  table {\n" +
            "    border-collapse: collapse !important;\n" +
            "  }\n" +
            "  a {\n" +
            "    color: #1a82e2;\n" +
            "  }\n" +
            "  img {\n" +
            "    height: auto;\n" +
            "    line-height: 100%;\n" +
            "    text-decoration: none;\n" +
            "    border: 0;\n" +
            "    outline: none;\n" +
            "  }\n" +
            "  </style>\n" +
            "\n" +
            "</head>\n" +
            "<body style=\"background-color: #e9ecef;\">\n" +
            "\n" +
            "  <!-- start preheader -->\n" +
            "  <div class=\"preheader\" style=\"display: none; max-width: 0; max-height: 0; overflow: hidden; font-size: 1px; line-height: 1px; color: #fff; opacity: 0;\">\n" +
            "    A preheader is the short summary text that follows the subject line when an email is viewed in the inbox.\n" +
            "  </div>\n" +
            "  <!-- end preheader -->\n" +
            "\n" +
            "  <!-- start body -->\n" +
            "  <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n" +
            "\n" +
            "    <!-- start logo -->\n" +
            "    <tr>\n" +
            "      <td align=\"center\" bgcolor=\"#e9ecef\">\n" +
            "  \n" +
            "        <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"max-width: 600px;\">\n" +
            "          <tr>\n" +
            "            <td align=\"center\" valign=\"top\" style=\"padding: 36px 24px;\">\n" +
            "              <a href=\"https://www.blogdesire.com\" target=\"_blank\" style=\"display: inline-block;\">\n" +
            "                <img src=\"https://www.blogdesire.com/wp-content/uploads/2019/07/blogdesire-1.png\" alt=\"Logo\" border=\"0\" width=\"48\" style=\"display: block; width: 48px; max-width: 48px; min-width: 48px;\">\n" +
            "              </a>\n" +
            "            </td>\n" +
            "          </tr>\n" +
            "        </table>\n" +
            "\n" +
            "      </td>\n" +
            "    </tr>\n" +
            "    <!-- end logo -->\n" +
            "\n" +
            "    <!-- start hero -->\n" +
            "    <tr>\n" +
            "      <td align=\"center\" bgcolor=\"#e9ecef\">\n" +
            "\n" +
            "        <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"max-width: 600px;\">\n" +
            "          <tr>\n" +
            "            <td align=\"left\" bgcolor=\"#ffffff\" style=\"padding: 36px 24px 0; font-family: 'Source Sans Pro', Helvetica, Arial, sans-serif; border-top: 3px solid #d4dadf;\">\n" +
            "              <h1 style=\"margin: 0; font-size: 32px; font-weight: 700; letter-spacing: -1px; line-height: 48px;\">Confirm Your Email Address</h1>\n" +
            "            </td>\n" +
            "          </tr>\n" +
            "        </table>\n" +
            "  \n" +
            "      </td>\n" +
            "    </tr>\n" +
            "    <!-- end hero -->\n" +
            "\n" +
            "    <!-- start copy block -->\n" +
            "    <tr>\n" +
            "      <td align=\"center\" bgcolor=\"#e9ecef\">\n" +
            " \n" +
            "        <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"max-width: 600px;\">\n" +
            "\n" +
            "          <!-- start copy -->\n" +
            "          <tr>\n" +
            "            <td align=\"left\" bgcolor=\"#ffffff\" style=\"padding: 24px; font-family: 'Source Sans Pro', Helvetica, Arial, sans-serif; font-size: 16px; line-height: 24px;\">\n" +
            "              <p style=\"margin: 0;\">Your verify code here:</p>\n" +
            "              <p  style=\"margin-left: 50px;font-family: 'Source Sans Pro', Helvetica, Arial, sans-serif; font-size: 40px; line-height: 1px;\">:code:</p>\n" +
            "            </td>\n" +
            "          </tr>  \n" +
            "          <!-- end copy -->       \n" +
            "          <!-- start copy -->\n" +
            "          <tr>\n" +
            "            <td align=\"left\" bgcolor=\"#ffffff\" style=\"padding: 24px; font-family: 'Source Sans Pro', Helvetica, Arial, sans-serif; font-size: 16px; line-height: 24px; border-bottom: 3px solid #d4dadf\">\n" +
            "              <p style=\"margin: 0;\">Cheers,<br> BikeLongVu</p>\n" +
            "            </td>\n" +
            "          </tr>\n" +
            "          <!-- end copy -->\n" +
            "\n" +
            "        </table>\n" +
            "  \n" +
            "      </td>\n" +
            "    </tr>\n" +
            "    <!-- end copy block -->\n" +
            "\n" +
            "  </table>\n" +
            "  <!-- end body -->\n" +
            "\n" +
            "</body>\n" +
            "</html>";
    public static final String mailOrder = "<!DOCTYPE html\n" +
            "    PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n" +
            "<html xmlns=\"http://www.w3.org/1999/xhtml\" xmlns:o=\"urn:schemas-microsoft-com:office:office\">\n" +
            "\n" +
            "<head>\n" +
            "    <meta charset=\"UTF-8\">\n" +
            "    <meta content=\"width=device-width, initial-scale=1\" name=\"viewport\">\n" +
            "    <meta name=\"x-apple-disable-message-reformatting\">\n" +
            "    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n" +
            "    <meta content=\"telephone=no\" name=\"format-detection\">\n" +
            "    <title>New Template</title><!--[if (mso 16)]>\n" +
            "    <style type=\"text/css\">\n" +
            "    a {text-decoration: none;}\n" +
            "    </style>\n" +
            "    <![endif]--><!--[if gte mso 9]><style>sup { font-size: 100% !important; }</style><![endif]--><!--[if gte mso 9]>\n" +
            "<xml>\n" +
            "    <o:OfficeDocumentSettings>\n" +
            "    <o:AllowPNG></o:AllowPNG>\n" +
            "    <o:PixelsPerInch>96</o:PixelsPerInch>\n" +
            "    </o:OfficeDocumentSettings>\n" +
            "</xml>\n" +
            "<![endif]-->\n" +
            "    <style type=\"text/css\">\n" +
            "        #outlook a {\n" +
            "            padding: 0;\n" +
            "        }\n" +
            "\n" +
            "        .es-button {\n" +
            "            mso-style-priority: 100 !important;\n" +
            "            text-decoration: none !important;\n" +
            "        }\n" +
            "\n" +
            "        a[x-apple-data-detectors] {\n" +
            "            color: inherit !important;\n" +
            "            text-decoration: none !important;\n" +
            "            font-size: inherit !important;\n" +
            "            font-family: inherit !important;\n" +
            "            font-weight: inherit !important;\n" +
            "            line-height: inherit !important;\n" +
            "        }\n" +
            "\n" +
            "        .es-desk-hidden {\n" +
            "            display: none;\n" +
            "            float: left;\n" +
            "            overflow: hidden;\n" +
            "            width: 0;\n" +
            "            max-height: 0;\n" +
            "            line-height: 0;\n" +
            "            mso-hide: all;\n" +
            "        }\n" +
            "\n" +
            "        @media only screen and (max-width:600px) {\n" +
            "\n" +
            "            p,\n" +
            "            ul li,\n" +
            "            ol li,\n" +
            "            a {\n" +
            "                line-height: 150% !important\n" +
            "            }\n" +
            "\n" +
            "            h1,\n" +
            "            h2,\n" +
            "            h3,\n" +
            "            h1 a,\n" +
            "            h2 a,\n" +
            "            h3 a {\n" +
            "                line-height: 120% !important\n" +
            "            }\n" +
            "\n" +
            "            h1 {\n" +
            "                font-size: 36px !important;\n" +
            "                text-align: left\n" +
            "            }\n" +
            "\n" +
            "            h2 {\n" +
            "                font-size: 26px !important;\n" +
            "                text-align: left\n" +
            "            }\n" +
            "\n" +
            "            h3 {\n" +
            "                font-size: 20px !important;\n" +
            "                text-align: left\n" +
            "            }\n" +
            "\n" +
            "            .es-header-body h1 a,\n" +
            "            .es-content-body h1 a,\n" +
            "            .es-footer-body h1 a {\n" +
            "                font-size: 36px !important;\n" +
            "                text-align: left\n" +
            "            }\n" +
            "\n" +
            "            .es-header-body h2 a,\n" +
            "            .es-content-body h2 a,\n" +
            "            .es-footer-body h2 a {\n" +
            "                font-size: 26px !important;\n" +
            "                text-align: left\n" +
            "            }\n" +
            "\n" +
            "            .es-header-body h3 a,\n" +
            "            .es-content-body h3 a,\n" +
            "            .es-footer-body h3 a {\n" +
            "                font-size: 20px !important;\n" +
            "                text-align: left\n" +
            "            }\n" +
            "\n" +
            "            .es-menu td a {\n" +
            "                font-size: 12px !important\n" +
            "            }\n" +
            "\n" +
            "            .es-header-body p,\n" +
            "            .es-header-body ul li,\n" +
            "            .es-header-body ol li,\n" +
            "            .es-header-body a {\n" +
            "                font-size: 14px !important\n" +
            "            }\n" +
            "\n" +
            "            .es-content-body p,\n" +
            "            .es-content-body ul li,\n" +
            "            .es-content-body ol li,\n" +
            "            .es-content-body a {\n" +
            "                font-size: 14px !important\n" +
            "            }\n" +
            "\n" +
            "            .es-footer-body p,\n" +
            "            .es-footer-body ul li,\n" +
            "            .es-footer-body ol li,\n" +
            "            .es-footer-body a {\n" +
            "                font-size: 14px !important\n" +
            "            }\n" +
            "\n" +
            "            .es-infoblock p,\n" +
            "            .es-infoblock ul li,\n" +
            "            .es-infoblock ol li,\n" +
            "            .es-infoblock a {\n" +
            "                font-size: 12px !important\n" +
            "            }\n" +
            "\n" +
            "            *[class=\"gmail-fix\"] {\n" +
            "                display: none !important\n" +
            "            }\n" +
            "\n" +
            "            .es-m-txt-c,\n" +
            "            .es-m-txt-c h1,\n" +
            "            .es-m-txt-c h2,\n" +
            "            .es-m-txt-c h3 {\n" +
            "                text-align: center !important\n" +
            "            }\n" +
            "\n" +
            "            .es-m-txt-r,\n" +
            "            .es-m-txt-r h1,\n" +
            "            .es-m-txt-r h2,\n" +
            "            .es-m-txt-r h3 {\n" +
            "                text-align: right !important\n" +
            "            }\n" +
            "\n" +
            "            .es-m-txt-l,\n" +
            "            .es-m-txt-l h1,\n" +
            "            .es-m-txt-l h2,\n" +
            "            .es-m-txt-l h3 {\n" +
            "                text-align: left !important\n" +
            "            }\n" +
            "\n" +
            "            .es-m-txt-r img,\n" +
            "            .es-m-txt-c img,\n" +
            "            .es-m-txt-l img {\n" +
            "                display: inline !important\n" +
            "            }\n" +
            "\n" +
            "            .es-button-border {\n" +
            "                display: inline-block !important\n" +
            "            }\n" +
            "\n" +
            "            a.es-button,\n" +
            "            button.es-button {\n" +
            "                font-size: 20px !important;\n" +
            "                display: inline-block !important\n" +
            "            }\n" +
            "\n" +
            "            .es-adaptive table,\n" +
            "            .es-left,\n" +
            "            .es-right {\n" +
            "                width: 100% !important\n" +
            "            }\n" +
            "\n" +
            "            .es-content table,\n" +
            "            .es-header table,\n" +
            "            .es-footer table,\n" +
            "            .es-content,\n" +
            "            .es-footer,\n" +
            "            .es-header {\n" +
            "                width: 100% !important;\n" +
            "                max-width: 600px !important\n" +
            "            }\n" +
            "\n" +
            "            .es-adapt-td {\n" +
            "                display: block !important;\n" +
            "                width: 100% !important\n" +
            "            }\n" +
            "\n" +
            "            .adapt-img {\n" +
            "                width: 100% !important;\n" +
            "                height: auto !important\n" +
            "            }\n" +
            "\n" +
            "            .es-m-p0 {\n" +
            "                padding: 0 !important\n" +
            "            }\n" +
            "\n" +
            "            .es-m-p0r {\n" +
            "                padding-right: 0 !important\n" +
            "            }\n" +
            "\n" +
            "            .es-m-p0l {\n" +
            "                padding-left: 0 !important\n" +
            "            }\n" +
            "\n" +
            "            .es-m-p0t {\n" +
            "                padding-top: 0 !important\n" +
            "            }\n" +
            "\n" +
            "            .es-m-p0b {\n" +
            "                padding-bottom: 0 !important\n" +
            "            }\n" +
            "\n" +
            "            .es-m-p20b {\n" +
            "                padding-bottom: 20px !important\n" +
            "            }\n" +
            "\n" +
            "            .es-mobile-hidden,\n" +
            "            .es-hidden {\n" +
            "                display: none !important\n" +
            "            }\n" +
            "\n" +
            "            tr.es-desk-hidden,\n" +
            "            td.es-desk-hidden,\n" +
            "            table.es-desk-hidden {\n" +
            "                width: auto !important;\n" +
            "                overflow: visible !important;\n" +
            "                float: none !important;\n" +
            "                max-height: inherit !important;\n" +
            "                line-height: inherit !important\n" +
            "            }\n" +
            "\n" +
            "            tr.es-desk-hidden {\n" +
            "                display: table-row !important\n" +
            "            }\n" +
            "\n" +
            "            table.es-desk-hidden {\n" +
            "                display: table !important\n" +
            "            }\n" +
            "\n" +
            "            td.es-desk-menu-hidden {\n" +
            "                display: table-cell !important\n" +
            "            }\n" +
            "\n" +
            "            .es-menu td {\n" +
            "                width: 1% !important\n" +
            "            }\n" +
            "\n" +
            "            table.es-table-not-adapt,\n" +
            "            .esd-block-html table {\n" +
            "                width: auto !important\n" +
            "            }\n" +
            "\n" +
            "            table.es-social {\n" +
            "                display: inline-block !important\n" +
            "            }\n" +
            "\n" +
            "            table.es-social td {\n" +
            "                display: inline-block !important\n" +
            "            }\n" +
            "\n" +
            "            .es-m-p5 {\n" +
            "                padding: 5px !important\n" +
            "            }\n" +
            "\n" +
            "            .es-m-p5t {\n" +
            "                padding-top: 5px !important\n" +
            "            }\n" +
            "\n" +
            "            .es-m-p5b {\n" +
            "                padding-bottom: 5px !important\n" +
            "            }\n" +
            "\n" +
            "            .es-m-p5r {\n" +
            "                padding-right: 5px !important\n" +
            "            }\n" +
            "\n" +
            "            .es-m-p5l {\n" +
            "                padding-left: 5px !important\n" +
            "            }\n" +
            "\n" +
            "            .es-m-p10 {\n" +
            "                padding: 10px !important\n" +
            "            }\n" +
            "\n" +
            "            .es-m-p10t {\n" +
            "                padding-top: 10px !important\n" +
            "            }\n" +
            "\n" +
            "            .es-m-p10b {\n" +
            "                padding-bottom: 10px !important\n" +
            "            }\n" +
            "\n" +
            "            .es-m-p10r {\n" +
            "                padding-right: 10px !important\n" +
            "            }\n" +
            "\n" +
            "            .es-m-p10l {\n" +
            "                padding-left: 10px !important\n" +
            "            }\n" +
            "\n" +
            "            .es-m-p15 {\n" +
            "                padding: 15px !important\n" +
            "            }\n" +
            "\n" +
            "            .es-m-p15t {\n" +
            "                padding-top: 15px !important\n" +
            "            }\n" +
            "\n" +
            "            .es-m-p15b {\n" +
            "                padding-bottom: 15px !important\n" +
            "            }\n" +
            "\n" +
            "            .es-m-p15r {\n" +
            "                padding-right: 15px !important\n" +
            "            }\n" +
            "\n" +
            "            .es-m-p15l {\n" +
            "                padding-left: 15px !important\n" +
            "            }\n" +
            "\n" +
            "            .es-m-p20 {\n" +
            "                padding: 20px !important\n" +
            "            }\n" +
            "\n" +
            "            .es-m-p20t {\n" +
            "                padding-top: 20px !important\n" +
            "            }\n" +
            "\n" +
            "            .es-m-p20r {\n" +
            "                padding-right: 20px !important\n" +
            "            }\n" +
            "\n" +
            "            .es-m-p20l {\n" +
            "                padding-left: 20px !important\n" +
            "            }\n" +
            "\n" +
            "            .es-m-p25 {\n" +
            "                padding: 25px !important\n" +
            "            }\n" +
            "\n" +
            "            .es-m-p25t {\n" +
            "                padding-top: 25px !important\n" +
            "            }\n" +
            "\n" +
            "            .es-m-p25b {\n" +
            "                padding-bottom: 25px !important\n" +
            "            }\n" +
            "\n" +
            "            .es-m-p25r {\n" +
            "                padding-right: 25px !important\n" +
            "            }\n" +
            "\n" +
            "            .es-m-p25l {\n" +
            "                padding-left: 25px !important\n" +
            "            }\n" +
            "\n" +
            "            .es-m-p30 {\n" +
            "                padding: 30px !important\n" +
            "            }\n" +
            "\n" +
            "            .es-m-p30t {\n" +
            "                padding-top: 30px !important\n" +
            "            }\n" +
            "\n" +
            "            .es-m-p30b {\n" +
            "                padding-bottom: 30px !important\n" +
            "            }\n" +
            "\n" +
            "            .es-m-p30r {\n" +
            "                padding-right: 30px !important\n" +
            "            }\n" +
            "\n" +
            "            .es-m-p30l {\n" +
            "                padding-left: 30px !important\n" +
            "            }\n" +
            "\n" +
            "            .es-m-p35 {\n" +
            "                padding: 35px !important\n" +
            "            }\n" +
            "\n" +
            "            .es-m-p35t {\n" +
            "                padding-top: 35px !important\n" +
            "            }\n" +
            "\n" +
            "            .es-m-p35b {\n" +
            "                padding-bottom: 35px !important\n" +
            "            }\n" +
            "\n" +
            "            .es-m-p35r {\n" +
            "                padding-right: 35px !important\n" +
            "            }\n" +
            "\n" +
            "            .es-m-p35l {\n" +
            "                padding-left: 35px !important\n" +
            "            }\n" +
            "\n" +
            "            .es-m-p40 {\n" +
            "                padding: 40px !important\n" +
            "            }\n" +
            "\n" +
            "            .es-m-p40t {\n" +
            "                padding-top: 40px !important\n" +
            "            }\n" +
            "\n" +
            "            .es-m-p40b {\n" +
            "                padding-bottom: 40px !important\n" +
            "            }\n" +
            "\n" +
            "            .es-m-p40r {\n" +
            "                padding-right: 40px !important\n" +
            "            }\n" +
            "\n" +
            "            .es-m-p40l {\n" +
            "                padding-left: 40px !important\n" +
            "            }\n" +
            "\n" +
            "            .es-desk-hidden {\n" +
            "                display: table-row !important;\n" +
            "                width: auto !important;\n" +
            "                overflow: visible !important;\n" +
            "                max-height: inherit !important\n" +
            "            }\n" +
            "        }\n" +
            "    </style>\n" +
            "</head>\n" +
            "\n" +
            "<body\n" +
            "    style=\"width:100%;font-family:arial, 'helvetica neue', helvetica, sans-serif;-webkit-text-size-adjust:100%;-ms-text-size-adjust:100%;padding:0;Margin:0\">\n" +
            "    <div class=\"es-wrapper-color\" style=\"background-color:#FAFAFA\"><!--[if gte mso 9]>\n" +
            "\t\t\t<v:background xmlns:v=\"urn:schemas-microsoft-com:vml\" fill=\"t\">\n" +
            "\t\t\t\t<v:fill type=\"tile\" color=\"#fafafa\"></v:fill>\n" +
            "\t\t\t</v:background>\n" +
            "\t\t<![endif]-->\n" +
            "        <table class=\"es-wrapper\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\"\n" +
            "            style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px;padding:0;Margin:0;width:100%;height:100%;background-repeat:repeat;background-position:center top;background-color:#FAFAFA\">\n" +
            "            <tr>\n" +
            "                <td valign=\"top\" style=\"padding:0;Margin:0\">\n" +
            "                    <table cellpadding=\"0\" cellspacing=\"0\" class=\"es-content\" align=\"center\"\n" +
            "                        style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px;table-layout:fixed !important;width:100%\">\n" +
            "                        <tr>\n" +
            "                            <td class=\"es-info-area\" align=\"center\" style=\"padding:0;Margin:0\">\n" +
            "                                <table class=\"es-content-body\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\"\n" +
            "                                    style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px;background-color:transparent;width:600px\"\n" +
            "                                    bgcolor=\"#FFFFFF\">\n" +
            "                                    <tr>\n" +
            "                                        <td align=\"left\" style=\"padding:20px;Margin:0\">\n" +
            "                                            <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"\n" +
            "                                                style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px\">\n" +
            "                                                <tr>\n" +
            "                                                    <td align=\"center\" valign=\"top\"\n" +
            "                                                        style=\"padding:0;Margin:0;width:560px\">\n" +
            "                                                        <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"\n" +
            "                                                            role=\"presentation\"\n" +
            "                                                            style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px\">\n" +
            "                                                            <tr>\n" +
            "                                                                <td align=\"center\" class=\"es-infoblock\"\n" +
            "                                                                    style=\"padding:0;Margin:0;line-height:14px;font-size:12px;color:#CCCCCC\">\n" +
            "                                                                    <p\n" +
            "                                                                        style=\"Margin:0;-webkit-text-size-adjust:none;-ms-text-size-adjust:none;mso-line-height-rule:exactly;font-family:arial, 'helvetica neue', helvetica, sans-serif;line-height:14px;color:#CCCCCC;font-size:12px\">\n" +
            "                                                                        <a target=\"_blank\" href=\"\"\n" +
            "                                                                            style=\"-webkit-text-size-adjust:none;-ms-text-size-adjust:none;mso-line-height-rule:exactly;text-decoration:underline;color:#CCCCCC;font-size:12px\">View\n" +
            "                                                                            online version</a>\n" +
            "                                                                    </p>\n" +
            "                                                                </td>\n" +
            "                                                            </tr>\n" +
            "                                                        </table>\n" +
            "                                                    </td>\n" +
            "                                                </tr>\n" +
            "                                            </table>\n" +
            "                                        </td>\n" +
            "                                    </tr>\n" +
            "                                </table>\n" +
            "                            </td>\n" +
            "                        </tr>\n" +
            "                    </table>\n" +
            "                    <table cellpadding=\"0\" cellspacing=\"0\" class=\"es-header\" align=\"center\"\n" +
            "                        style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px;table-layout:fixed !important;width:100%;background-color:transparent;background-repeat:repeat;background-position:center top\">\n" +
            "                        <tr>\n" +
            "                            <td align=\"center\" style=\"padding:0;Margin:0\">\n" +
            "                                <table bgcolor=\"#ffffff\" class=\"es-header-body\" align=\"center\" cellpadding=\"0\"\n" +
            "                                    cellspacing=\"0\"\n" +
            "                                    style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px;background-color:transparent;width:600px\">\n" +
            "                                    <tr>\n" +
            "                                        <td align=\"left\" style=\"padding:20px;Margin:0\">\n" +
            "                                            <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"\n" +
            "                                                style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px\">\n" +
            "                                                <tr>\n" +
            "                                                    <td class=\"es-m-p0r\" valign=\"top\" align=\"center\"\n" +
            "                                                        style=\"padding:0;Margin:0;width:560px\">\n" +
            "                                                        <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"\n" +
            "                                                            role=\"presentation\"\n" +
            "                                                            style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px\">\n" +
            "                                                            <tr>\n" +
            "                                                                <td align=\"center\"\n" +
            "                                                                    style=\"padding:0;Margin:0;padding-bottom:10px;font-size:0px\">\n" +
            "                                                                    <img src=\"https://xwefpf.stripocdn.email/content/guids/CABINET_887f48b6a2f22ad4fb67bc2a58c0956b/images/93351617889024778.png\"\n" +
            "                                                                        alt=\"Logo\"\n" +
            "                                                                        style=\"display:block;border:0;outline:none;text-decoration:none;-ms-interpolation-mode:bicubic;font-size:12px\"\n" +
            "                                                                        width=\"200\" title=\"Logo\">\n" +
            "                                                                </td>\n" +
            "                                                            </tr>\n" +
            "                                                        </table>\n" +
            "                                                    </td>\n" +
            "                                                </tr>\n" +
            "                                            </table>\n" +
            "                                        </td>\n" +
            "                                    </tr>\n" +
            "                                </table>\n" +
            "                            </td>\n" +
            "                        </tr>\n" +
            "                    </table>\n" +
            "                    <table cellpadding=\"0\" cellspacing=\"0\" class=\"es-content\" align=\"center\"\n" +
            "                        style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px;table-layout:fixed !important;width:100%\">\n" +
            "                        <tr>\n" +
            "                            <td align=\"center\" style=\"padding:0;Margin:0\">\n" +
            "                                <table bgcolor=\"#ffffff\" class=\"es-content-body\" align=\"center\" cellpadding=\"0\"\n" +
            "                                    cellspacing=\"0\"\n" +
            "                                    style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px;background-color:#FFFFFF;width:600px\">\n" +
            "                                    <tr>\n" +
            "                                        <td align=\"left\"\n" +
            "                                            style=\"padding:0;Margin:0;padding-top:15px;padding-left:20px;padding-right:20px\">\n" +
            "                                            <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"\n" +
            "                                                style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px\">\n" +
            "                                                <tr>\n" +
            "                                                    <td align=\"center\" valign=\"top\"\n" +
            "                                                        style=\"padding:0;Margin:0;width:560px\">\n" +
            "                                                        <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"\n" +
            "                                                            role=\"presentation\"\n" +
            "                                                            style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px\">\n" +
            "                                                            <tr>\n" +
            "                                                                <td align=\"center\"\n" +
            "                                                                    style=\"padding:0;Margin:0;padding-top:10px;padding-bottom:10px;font-size:0px\">\n" +
            "                                                                    <img src=\"https://xwefpf.stripocdn.email/content/guids/CABINET_54100624d621728c49155116bef5e07d/images/84141618400759579.png\"\n" +
            "                                                                        alt\n" +
            "                                                                        style=\"display:block;border:0;outline:none;text-decoration:none;-ms-interpolation-mode:bicubic\"\n" +
            "                                                                        width=\"100\">\n" +
            "                                                                </td>\n" +
            "                                                            </tr>\n" +
            "                                                            <tr>\n" +
            "                                                                <td align=\"center\" class=\"es-m-txt-c\"\n" +
            "                                                                    style=\"padding:0;Margin:0;padding-bottom:10px\">\n" +
            "                                                                    <h1\n" +
            "                                                                        style=\"Margin:0;line-height:46px;mso-line-height-rule:exactly;font-family:arial, 'helvetica neue', helvetica, sans-serif;font-size:46px;font-style:normal;font-weight:bold;color:#333333\">\n" +
            "                                                                        Order confirmation</h1>\n" +
            "                                                                </td>\n" +
            "                                                            </tr>\n" +
            "                                                        </table>\n" +
            "                                                    </td>\n" +
            "                                                </tr>\n" +
            "                                            </table>\n" +
            "                                        </td>\n" +
            "                                    </tr>\n" +
            "                                </table>\n" +
            "                            </td>\n" +
            "                        </tr>\n" +
            "                    </table>\n" +
            "                    <table cellpadding=\"0\" cellspacing=\"0\" class=\"es-content\" align=\"center\"\n" +
            "                        style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px;table-layout:fixed !important;width:100%\">\n" +
            "                        <tr>\n" +
            "                            <td align=\"center\" style=\"padding:0;Margin:0\">\n" +
            "                                <table bgcolor=\"#ffffff\" class=\"es-content-body\" align=\"center\" cellpadding=\"0\"\n" +
            "                                    cellspacing=\"0\"\n" +
            "                                    style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px;background-color:#FFFFFF;width:600px\">\n" +
            "                                    <tr>\n" +
            "                                        <td align=\"left\" style=\"padding:20px;Margin:0\">\n" +
            "                                            <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"\n" +
            "                                                style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px\">\n" +
            "                                                <tr>\n" +
            "                                                    <td align=\"center\" valign=\"top\"\n" +
            "                                                        style=\"padding:0;Margin:0;width:560px\">\n" +
            "                                                        <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"\n" +
            "                                                            role=\"presentation\"\n" +
            "                                                            style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px\">\n" +
            "                                                            <tr>\n" +
            "                                                                <td align=\"center\" class=\"es-m-txt-c\"\n" +
            "                                                                    style=\"padding:0;Margin:0\">\n" +
            "                                                                    <h2\n" +
            "                                                                        style=\"Margin:0;line-height:31px;mso-line-height-rule:exactly;font-family:arial, 'helvetica neue', helvetica, sans-serif;font-size:26px;font-style:normal;font-weight:bold;color:#333333\">\n" +
            "                                                                        Order&nbsp;<a target=\"_blank\" href=\"\"\n" +
            "                                                                            style=\"-webkit-text-size-adjust:none;-ms-text-size-adjust:none;mso-line-height-rule:exactly;text-decoration:underline;color:#5C68E2;font-size:26px\">:ORDER_ID:</a>\n" +
            "                                                                    </h2>\n" +
            "                                                                </td>\n" +
            "                                                            </tr>\n" +
            "                                                            <tr>\n" +
            "                                                                <td align=\"center\" class=\"es-m-p0r es-m-p0l\"\n" +
            "                                                                    style=\"Margin:0;padding-top:5px;padding-bottom:5px;padding-left:40px;padding-right:40px\">\n" +
            "                                                                    <p\n" +
            "                                                                        style=\"Margin:0;-webkit-text-size-adjust:none;-ms-text-size-adjust:none;mso-line-height-rule:exactly;font-family:arial, 'helvetica neue', helvetica, sans-serif;line-height:21px;color:#333333;font-size:14px\">\n" +
            "                                                                        Apr 17,&nbsp;2021</p>\n" +
            "                                                                </td>\n" +
            "                                                            </tr>\n" +
            "                                                            <tr>\n" +
            "                                                                <td align=\"center\" class=\"es-m-p0r es-m-p0l\"\n" +
            "                                                                    style=\"Margin:0;padding-top:5px;padding-bottom:15px;padding-left:40px;padding-right:40px\">\n" +
            "                                                                    <p\n" +
            "                                                                        style=\"Margin:0;-webkit-text-size-adjust:none;-ms-text-size-adjust:none;mso-line-height-rule:exactly;font-family:arial, 'helvetica neue', helvetica, sans-serif;line-height:21px;color:#333333;font-size:14px\">\n" +
            "                                                                        This email is to confirm&nbsp;your order. We\n" +
            "                                                                        will send you another email as soon as it ships.\n" +
            "                                                                    </p>\n" +
            "                                                                </td>\n" +
            "                                                            </tr>\n" +
            "                                                            <tr>\n" +
            "                                                                <td align=\"center\" style=\"padding:0;Margin:0\"><!--[if mso]><a href=\"\" target=\"_blank\" hidden>\n" +
            "\t<v:roundrect xmlns:v=\"urn:schemas-microsoft-com:vml\" xmlns:w=\"urn:schemas-microsoft-com:office:word\" esdevVmlButton href=\"\" \n" +
            "                style=\"height:44px; v-text-anchor:middle; width:310px\" arcsize=\"14%\" strokecolor=\"#5c68e2\" strokeweight=\"2px\" fillcolor=\"#5c68e2\">\n" +
            "\t\t<w:anchorlock></w:anchorlock>\n" +
            "\t\t<center style='color:#ffffff; font-family:arial, \"helvetica neue\", helvetica, sans-serif; font-size:18px; font-weight:400; line-height:18px;  mso-text-raise:1px'>TRACK ORDER STATUS</center>\n" +
            "\t</v:roundrect></a>\n" +
            "<![endif]--><!--[if !mso]><!-- --><span class=\"es-button-border msohide\"\n" +
            "                                                                        style=\"border-style:solid;border-color:#5c68e2;background:#5c68e2;border-width:2px;display:inline-block;border-radius:6px;width:auto;mso-hide:all\"><a\n" +
            "                                                                            href=\"\" class=\"es-button\" target=\"_blank\"\n" +
            "                                                                            style=\"mso-style-priority:100 !important;text-decoration:none;-webkit-text-size-adjust:none;-ms-text-size-adjust:none;mso-line-height-rule:exactly;color:#FFFFFF;font-size:20px;padding:10px 30px 10px 30px;display:inline-block;background:#5C68E2;border-radius:6px;font-family:arial, 'helvetica neue', helvetica, sans-serif;font-weight:normal;font-style:normal;line-height:24px;width:auto;text-align:center;mso-padding-alt:0;mso-border-alt:10px solid #5C68E2;padding-left:30px;padding-right:30px\">TRACK\n" +
            "                                                                            ORDER STATUS</a></span><!--<![endif]--></td>\n" +
            "                                                            </tr>\n" +
            "                                                        </table>\n" +
            "                                                    </td>\n" +
            "                                                </tr>\n" +
            "                                            </table>\n" +
            "                                        </td>\n" +
            "                                    </tr>\n" +
            "                                    \n" +
            "                                       <h3> :PRODUCT: </h3>// noi de dua danh sach san pham vao\n" +
            "                                    \n" +
            "                                    <tr>\n" +
            "                                        <td class=\"esdev-adapt-off\" align=\"left\"\n" +
            "                                            style=\"Margin:0;padding-top:10px;padding-bottom:10px;padding-left:20px;padding-right:20px\">\n" +
            "                                            <table cellpadding=\"0\" cellspacing=\"0\" class=\"esdev-mso-table\"\n" +
            "                                                style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px;width:560px\">\n" +
            "                                                <tr>\n" +
            "                                                    <td class=\"esdev-mso-td\" valign=\"top\" style=\"padding:0;Margin:0\">\n" +
            "                                                        <table cellpadding=\"0\" cellspacing=\"0\" class=\"es-left\"\n" +
            "                                                            align=\"left\"\n" +
            "                                                            style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px;float:left\">\n" +
            "                                                            <tr>\n" +
            "                                                                <td class=\"es-m-p0r\" align=\"center\"\n" +
            "                                                                    style=\"padding:0;Margin:0;width:70px\">\n" +
            "                                                                    <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"\n" +
            "                                                                        role=\"presentation\"\n" +
            "                                                                        style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px\">\n" +
            "                                                                        <tr>\n" +
            "                                                                            <td align=\"center\"\n" +
            "                                                                                style=\"padding:0;Margin:0;font-size:0px\">\n" +
            "                                                                                <img class=\"adapt-img\"\n" +
            "                                                                                    src=\"https://xwefpf.stripocdn.email/content/guids/CABINET_c67048fd0acf81b47e18129166337c05/images/43961618299486640.png\"\n" +
            "                                                                                    alt\n" +
            "                                                                                    style=\"display:block;border:0;outline:none;text-decoration:none;-ms-interpolation-mode:bicubic\"\n" +
            "                                                                                    width=\"70\">\n" +
            "                                                                            </td>\n" +
            "                                                                        </tr>\n" +
            "                                                                    </table>\n" +
            "                                                                </td>\n" +
            "                                                            </tr>\n" +
            "                                                        </table>\n" +
            "                                                    </td>\n" +
            "                                                    <td style=\"padding:0;Margin:0;width:20px\"></td>\n" +
            "                                                    <td class=\"esdev-mso-td\" valign=\"top\" style=\"padding:0;Margin:0\">\n" +
            "                                                        <table cellpadding=\"0\" cellspacing=\"0\" class=\"es-left\"\n" +
            "                                                            align=\"left\"\n" +
            "                                                            style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px;float:left\">\n" +
            "                                                            <tr>\n" +
            "                                                                <td align=\"center\"\n" +
            "                                                                    style=\"padding:0;Margin:0;width:265px\">\n" +
            "                                                                    <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"\n" +
            "                                                                        role=\"presentation\"\n" +
            "                                                                        style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px\">\n" +
            "                                                                        <tr>\n" +
            "                                                                            <td align=\"left\" style=\"padding:0;Margin:0\">\n" +
            "                                                                                <p\n" +
            "                                                                                    style=\"Margin:0;-webkit-text-size-adjust:none;-ms-text-size-adjust:none;mso-line-height-rule:exactly;font-family:arial, 'helvetica neue', helvetica, sans-serif;line-height:21px;color:#333333;font-size:14px\">\n" +
            "                                                                                    <strong>T-shirt</strong>\n" +
            "                                                                                </p>\n" +
            "                                                                            </td>\n" +
            "                                                                        </tr>\n" +
            "                                                                        <tr>\n" +
            "                                                                            <td align=\"left\"\n" +
            "                                                                                style=\"padding:0;Margin:0;padding-top:5px\">\n" +
            "                                                                                <p\n" +
            "                                                                                    style=\"Margin:0;-webkit-text-size-adjust:none;-ms-text-size-adjust:none;mso-line-height-rule:exactly;font-family:arial, 'helvetica neue', helvetica, sans-serif;line-height:21px;color:#333333;font-size:14px\">\n" +
            "                                                                                    Size: M<br>Color: White</p>\n" +
            "                                                                            </td>\n" +
            "                                                                        </tr>\n" +
            "                                                                    </table>\n" +
            "                                                                </td>\n" +
            "                                                            </tr>\n" +
            "                                                        </table>\n" +
            "                                                    </td>\n" +
            "                                                    <td style=\"padding:0;Margin:0;width:20px\"></td>\n" +
            "                                                    <td class=\"esdev-mso-td\" valign=\"top\" style=\"padding:0;Margin:0\">\n" +
            "                                                        <table cellpadding=\"0\" cellspacing=\"0\" class=\"es-left\"\n" +
            "                                                            align=\"left\"\n" +
            "                                                            style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px;float:left\">\n" +
            "                                                            <tr>\n" +
            "                                                                <td align=\"left\" style=\"padding:0;Margin:0;width:80px\">\n" +
            "                                                                    <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"\n" +
            "                                                                        role=\"presentation\"\n" +
            "                                                                        style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px\">\n" +
            "                                                                        <tr>\n" +
            "                                                                            <td align=\"center\"\n" +
            "                                                                                style=\"padding:0;Margin:0\">\n" +
            "                                                                                <p\n" +
            "                                                                                    style=\"Margin:0;-webkit-text-size-adjust:none;-ms-text-size-adjust:none;mso-line-height-rule:exactly;font-family:arial, 'helvetica neue', helvetica, sans-serif;line-height:21px;color:#333333;font-size:14px\">\n" +
            "                                                                                    1 pcs</p>\n" +
            "                                                                            </td>\n" +
            "                                                                        </tr>\n" +
            "                                                                    </table>\n" +
            "                                                                </td>\n" +
            "                                                            </tr>\n" +
            "                                                        </table>\n" +
            "                                                    </td>\n" +
            "                                                    <td style=\"padding:0;Margin:0;width:20px\"></td>\n" +
            "                                                    <td class=\"esdev-mso-td\" valign=\"top\" style=\"padding:0;Margin:0\">\n" +
            "                                                        <table cellpadding=\"0\" cellspacing=\"0\" class=\"es-right\"\n" +
            "                                                            align=\"right\"\n" +
            "                                                            style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px;float:right\">\n" +
            "                                                            <tr>\n" +
            "                                                                <td align=\"left\" style=\"padding:0;Margin:0;width:85px\">\n" +
            "                                                                    <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"\n" +
            "                                                                        role=\"presentation\"\n" +
            "                                                                        style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px\">\n" +
            "                                                                        <tr>\n" +
            "                                                                            <td align=\"right\"\n" +
            "                                                                                style=\"padding:0;Margin:0\">\n" +
            "                                                                                <p\n" +
            "                                                                                    style=\"Margin:0;-webkit-text-size-adjust:none;-ms-text-size-adjust:none;mso-line-height-rule:exactly;font-family:arial, 'helvetica neue', helvetica, sans-serif;line-height:21px;color:#333333;font-size:14px\">\n" +
            "                                                                                    $20</p>\n" +
            "                                                                            </td>\n" +
            "                                                                        </tr>\n" +
            "                                                                    </table>\n" +
            "                                                                </td>\n" +
            "                                                            </tr>\n" +
            "                                                        </table>\n" +
            "                                                    </td>\n" +
            "                                                </tr>\n" +
            "                                            </table>\n" +
            "                                        </td>\n" +
            "                                    </tr>\n" +
            "                                    <tr>\n" +
            "                                        <td align=\"left\"\n" +
            "                                            style=\"padding:0;Margin:0;padding-top:10px;padding-left:20px;padding-right:20px\">\n" +
            "                                            <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"\n" +
            "                                                style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px\">\n" +
            "                                                <tr>\n" +
            "                                                    <td class=\"es-m-p0r\" align=\"center\"\n" +
            "                                                        style=\"padding:0;Margin:0;width:560px\">\n" +
            "                                                        <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"\n" +
            "                                                            style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px;border-top:2px solid #efefef;border-bottom:2px solid #efefef\"\n" +
            "                                                            role=\"presentation\">\n" +
            "                                                            <tr>\n" +
            "                                                                <td align=\"right\" class=\"es-m-txt-r\"\n" +
            "                                                                    style=\"padding:0;Margin:0;padding-top:10px;padding-bottom:20px\">\n" +
            "                                                                    <p\n" +
            "                                                                        style=\"Margin:0;-webkit-text-size-adjust:none;-ms-text-size-adjust:none;mso-line-height-rule:exactly;font-family:arial, 'helvetica neue', helvetica, sans-serif;line-height:21px;color:#333333;font-size:14px\">\n" +
            "                                                                        Subtotal:&nbsp;<strong>:SUBTOTAL:</strong><br>Shipping:&nbsp;<strong>:SHIPPING:</strong><br>Tax:&nbsp;<strong>:TAX:</strong><br>Total:&nbsp;<strong>:TOTAL:</strong>\n" +
            "                                                                    </p>\n" +
            "                                                                </td>\n" +
            "                                                            </tr>\n" +
            "                                                        </table>\n" +
            "                                                    </td>\n" +
            "                                                </tr>\n" +
            "                                            </table>\n" +
            "                                        </td>\n" +
            "                                    </tr>\n" +
            "                                    <tr>\n" +
            "                                        <td align=\"left\"\n" +
            "                                            style=\"Margin:0;padding-bottom:10px;padding-top:20px;padding-left:20px;padding-right:20px\">\n" +
            "                                            <!--[if mso]><table style=\"width:560px\" cellpadding=\"0\" cellspacing=\"0\"><tr><td style=\"width:280px\" valign=\"top\"><![endif]-->\n" +
            "                                            <table cellpadding=\"0\" cellspacing=\"0\" class=\"es-left\" align=\"left\"\n" +
            "                                                style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px;float:left\">\n" +
            "                                                <tr>\n" +
            "                                                    <td class=\"es-m-p0r es-m-p20b\" align=\"center\"\n" +
            "                                                        style=\"padding:0;Margin:0;width:280px\">\n" +
            "                                                        <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"\n" +
            "                                                            role=\"presentation\"\n" +
            "                                                            style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px\">\n" +
            "                                                            <tr>\n" +
            "                                                                <td align=\"left\" style=\"padding:0;Margin:0\">\n" +
            "                                                                    <p\n" +
            "                                                                        style=\"Margin:0;-webkit-text-size-adjust:none;-ms-text-size-adjust:none;mso-line-height-rule:exactly;font-family:arial, 'helvetica neue', helvetica, sans-serif;line-height:21px;color:#333333;font-size:14px\">\n" +
            "                                                                        Customer: <strong>:EMAILCUSTOMER:</strong></p>\n" +
            "                                                                    <p\n" +
            "                                                                        style=\"Margin:0;-webkit-text-size-adjust:none;-ms-text-size-adjust:none;mso-line-height-rule:exactly;font-family:arial, 'helvetica neue', helvetica, sans-serif;line-height:21px;color:#333333;font-size:14px\">\n" +
            "                                                                        Order number:&nbsp;<strong>:ORDER_ID:</strong>\n" +
            "                                                                    </p>\n" +
            "                                                                    <p\n" +
            "                                                                        style=\"Margin:0;-webkit-text-size-adjust:none;-ms-text-size-adjust:none;mso-line-height-rule:exactly;font-family:arial, 'helvetica neue', helvetica, sans-serif;line-height:21px;color:#333333;font-size:14px\">\n" +
            "                                                                        Invoice date:&nbsp;<strong>:CREATE_AT:</strong>\n" +
            "                                                                    </p>\n" +
            "                                                                    <p\n" +
            "                                                                        style=\"Margin:0;-webkit-text-size-adjust:none;-ms-text-size-adjust:none;mso-line-height-rule:exactly;font-family:arial, 'helvetica neue', helvetica, sans-serif;line-height:21px;color:#333333;font-size:14px\">\n" +
            "                                                                        Payment\n" +
            "                                                                        method:&nbsp;<strong>:PAY_METHOD:</strong></p>\n" +
            "                                                                    <p\n" +
            "                                                                        style=\"Margin:0;-webkit-text-size-adjust:none;-ms-text-size-adjust:none;mso-line-height-rule:exactly;font-family:arial, 'helvetica neue', helvetica, sans-serif;line-height:21px;color:#333333;font-size:14px\">\n" +
            "                                                                        Currency:&nbsp;<strong>VND</strong></p>\n" +
            "                                                                </td>\n" +
            "                                                            </tr>\n" +
            "                                                        </table>\n" +
            "                                                    </td>\n" +
            "                                                </tr>\n" +
            "                                            </table>\n" +
            "                                            <!--[if mso]></td><td style=\"width:0px\"></td><td style=\"width:280px\" valign=\"top\"><![endif]-->\n" +
            "                                            <table cellpadding=\"0\" cellspacing=\"0\" class=\"es-right\" align=\"right\"\n" +
            "                                                style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px;float:right\">\n" +
            "                                                <tr>\n" +
            "                                                    <td class=\"es-m-p0r\" align=\"center\"\n" +
            "                                                        style=\"padding:0;Margin:0;width:280px\">\n" +
            "                                                        <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"\n" +
            "                                                            role=\"presentation\"\n" +
            "                                                            style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px\">\n" +
            "                                                            <tr>\n" +
            "                                                                <td align=\"left\" class=\"es-m-txt-l\"\n" +
            "                                                                    style=\"padding:0;Margin:0\">\n" +
            "                                                                    <p\n" +
            "                                                                        style=\"Margin:0;-webkit-text-size-adjust:none;-ms-text-size-adjust:none;mso-line-height-rule:exactly;font-family:arial, 'helvetica neue', helvetica, sans-serif;line-height:21px;color:#333333;font-size:14px\">\n" +
            "                                                                        Shipping Method:\n" +
            "                                                                        <strong>:SHIPPING_METHOD:</strong>\n" +
            "                                                                    </p>\n" +
            "                                                                    <p\n" +
            "                                                                        style=\"Margin:0;-webkit-text-size-adjust:none;-ms-text-size-adjust:none;mso-line-height-rule:exactly;font-family:arial, 'helvetica neue', helvetica, sans-serif;line-height:21px;color:#333333;font-size:14px\">\n" +
            "                                                                        Shipping address:</p>\n" +
            "                                                                    <p\n" +
            "                                                                        style=\"Margin:0;-webkit-text-size-adjust:none;-ms-text-size-adjust:none;mso-line-height-rule:exactly;font-family:arial, 'helvetica neue', helvetica, sans-serif;line-height:21px;color:#333333;font-size:14px\">\n" +
            "                                                                        <strong>:HOME_ADDRESS:,<br>:STREET:,<br>:PROVINCE:</strong>\n" +
            "                                                                    </p>\n" +
            "                                                                </td>\n" +
            "                                                            </tr>\n" +
            "                                                        </table>\n" +
            "                                                    </td>\n" +
            "                                                </tr>\n" +
            "                                            </table><!--[if mso]></td></tr></table><![endif]-->\n" +
            "                                        </td>\n" +
            "                                    </tr>\n" +
            "                                    <tr>\n" +
            "                                        <td align=\"left\"\n" +
            "                                            style=\"Margin:0;padding-bottom:10px;padding-top:15px;padding-left:20px;padding-right:20px\">\n" +
            "                                            <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"\n" +
            "                                                style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px\">\n" +
            "                                                <tr>\n" +
            "                                                    <td align=\"left\" style=\"padding:0;Margin:0;width:560px\">\n" +
            "                                                        <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"\n" +
            "                                                            role=\"presentation\"\n" +
            "                                                            style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px\">\n" +
            "                                                            <tr>\n" +
            "                                                                <td align=\"center\"\n" +
            "                                                                    style=\"padding:0;Margin:0;padding-top:10px;padding-bottom:10px\">\n" +
            "                                                                    <p\n" +
            "                                                                        style=\"Margin:0;-webkit-text-size-adjust:none;-ms-text-size-adjust:none;mso-line-height-rule:exactly;font-family:arial, 'helvetica neue', helvetica, sans-serif;line-height:21px;color:#333333;font-size:14px\">\n" +
            "                                                                        Got a question?&nbsp;Email us at&nbsp;<a\n" +
            "                                                                            target=\"_blank\" href=\"\"\n" +
            "                                                                            style=\"-webkit-text-size-adjust:none;-ms-text-size-adjust:none;mso-line-height-rule:exactly;text-decoration:underline;color:#5C68E2;font-size:14px\">longvubike@</a><a\n" +
            "                                                                            target=\"_blank\" href=\"\"\n" +
            "                                                                            style=\"-webkit-text-size-adjust:none;-ms-text-size-adjust:none;mso-line-height-rule:exactly;text-decoration:underline;color:#5C68E2;font-size:14px\">gmail</a><a\n" +
            "                                                                            target=\"_blank\" href=\"\"\n" +
            "                                                                            style=\"-webkit-text-size-adjust:none;-ms-text-size-adjust:none;mso-line-height-rule:exactly;text-decoration:underline;color:#5C68E2;font-size:14px\">.com</a>&nbsp;or\n" +
            "                                                                        give us a call at&nbsp;<a target=\"_blank\"\n" +
            "                                                                            href=\"\"\n" +
            "                                                                            style=\"-webkit-text-size-adjust:none;-ms-text-size-adjust:none;mso-line-height-rule:exactly;text-decoration:underline;color:#5C68E2;font-size:14px\">032\n" +
            "                                                                            649 76 48</a>.</p>\n" +
            "                                                                </td>\n" +
            "                                                            </tr>\n" +
            "                                                        </table>\n" +
            "                                                    </td>\n" +
            "                                                </tr>\n" +
            "                                            </table>\n" +
            "                                        </td>\n" +
            "                                    </tr>\n" +
            "                                </table>\n" +
            "                            </td>\n" +
            "                        </tr>\n" +
            "                    </table>\n" +
            "                    <table cellpadding=\"0\" cellspacing=\"0\" class=\"es-footer\" align=\"center\"\n" +
            "                        style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px;table-layout:fixed !important;width:100%;background-color:transparent;background-repeat:repeat;background-position:center top\">\n" +
            "                        <tr>\n" +
            "                            <td align=\"center\" style=\"padding:0;Margin:0\">\n" +
            "                                <table class=\"es-footer-body\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\"\n" +
            "                                    style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px;background-color:transparent;width:640px\">\n" +
            "                                    <tr>\n" +
            "                                        <td align=\"left\"\n" +
            "                                            style=\"Margin:0;padding-top:20px;padding-bottom:20px;padding-left:20px;padding-right:20px\">\n" +
            "                                            <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"\n" +
            "                                                style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px\">\n" +
            "                                                <tr>\n" +
            "                                                    <td align=\"left\" style=\"padding:0;Margin:0;width:600px\">\n" +
            "                                                        <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"\n" +
            "                                                            role=\"presentation\"\n" +
            "                                                            style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px\">\n" +
            "                                                            <tr>\n" +
            "                                                                <td align=\"center\"\n" +
            "                                                                    style=\"padding:0;Margin:0;padding-top:15px;padding-bottom:15px;font-size:0\">\n" +
            "                                                                    <table cellpadding=\"0\" cellspacing=\"0\"\n" +
            "                                                                        class=\"es-table-not-adapt es-social\"\n" +
            "                                                                        role=\"presentation\"\n" +
            "                                                                        style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px\">\n" +
            "                                                                        <tr>\n" +
            "                                                                            <td align=\"center\" valign=\"top\"\n" +
            "                                                                                style=\"padding:0;Margin:0;padding-right:40px\">\n" +
            "                                                                                <img title=\"Facebook\"\n" +
            "                                                                                    src=\"https://xwefpf.stripocdn.email/content/assets/img/social-icons/logo-black/facebook-logo-black.png\"\n" +
            "                                                                                    alt=\"Fb\" width=\"32\"\n" +
            "                                                                                    style=\"display:block;border:0;outline:none;text-decoration:none;-ms-interpolation-mode:bicubic\">\n" +
            "                                                                            </td>\n" +
            "                                                                            <td align=\"center\" valign=\"top\"\n" +
            "                                                                                style=\"padding:0;Margin:0;padding-right:40px\">\n" +
            "                                                                                <img title=\"Twitter\"\n" +
            "                                                                                    src=\"https://xwefpf.stripocdn.email/content/assets/img/social-icons/logo-black/twitter-logo-black.png\"\n" +
            "                                                                                    alt=\"Tw\" width=\"32\"\n" +
            "                                                                                    style=\"display:block;border:0;outline:none;text-decoration:none;-ms-interpolation-mode:bicubic\">\n" +
            "                                                                            </td>\n" +
            "                                                                            <td align=\"center\" valign=\"top\"\n" +
            "                                                                                style=\"padding:0;Margin:0;padding-right:40px\">\n" +
            "                                                                                <img title=\"Instagram\"\n" +
            "                                                                                    src=\"https://xwefpf.stripocdn.email/content/assets/img/social-icons/logo-black/instagram-logo-black.png\"\n" +
            "                                                                                    alt=\"Inst\" width=\"32\"\n" +
            "                                                                                    style=\"display:block;border:0;outline:none;text-decoration:none;-ms-interpolation-mode:bicubic\">\n" +
            "                                                                            </td>\n" +
            "                                                                            <td align=\"center\" valign=\"top\"\n" +
            "                                                                                style=\"padding:0;Margin:0\"><img\n" +
            "                                                                                    title=\"Youtube\"\n" +
            "                                                                                    src=\"https://xwefpf.stripocdn.email/content/assets/img/social-icons/logo-black/youtube-logo-black.png\"\n" +
            "                                                                                    alt=\"Yt\" width=\"32\"\n" +
            "                                                                                    style=\"display:block;border:0;outline:none;text-decoration:none;-ms-interpolation-mode:bicubic\">\n" +
            "                                                                            </td>\n" +
            "                                                                        </tr>\n" +
            "                                                                    </table>\n" +
            "                                                                </td>\n" +
            "                                                            </tr>\n" +
            "                                                            <tr>\n" +
            "                                                                <td align=\"center\"\n" +
            "                                                                    style=\"padding:0;Margin:0;padding-bottom:35px\">\n" +
            "                                                                    <p\n" +
            "                                                                        style=\"Margin:0;-webkit-text-size-adjust:none;-ms-text-size-adjust:none;mso-line-height-rule:exactly;font-family:arial, 'helvetica neue', helvetica, sans-serif;line-height:18px;color:#333333;font-size:12px\">\n" +
            "                                                                        Style Casual&nbsp;© 2021 Style Casual, Inc. All\n" +
            "                                                                        Rights Reserved.</p>\n" +
            "                                                                    <p\n" +
            "                                                                        style=\"Margin:0;-webkit-text-size-adjust:none;-ms-text-size-adjust:none;mso-line-height-rule:exactly;font-family:arial, 'helvetica neue', helvetica, sans-serif;line-height:18px;color:#333333;font-size:12px\">\n" +
            "                                                                        4562 Hazy Panda Limits, Chair Crossing,\n" +
            "                                                                        Kentucky, US, 607898</p>\n" +
            "                                                                </td>\n" +
            "                                                            </tr>\n" +
            "                                                            <tr>\n" +
            "                                                                <td style=\"padding:0;Margin:0\">\n" +
            "                                                                    <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"\n" +
            "                                                                        class=\"es-menu\" role=\"presentation\"\n" +
            "                                                                        style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px\">\n" +
            "                                                                        <tr class=\"links\">\n" +
            "                                                                            <td align=\"center\" valign=\"top\"\n" +
            "                                                                                width=\"33.33%\"\n" +
            "                                                                                style=\"Margin:0;padding-left:5px;padding-right:5px;padding-top:5px;padding-bottom:5px;border:0\">\n" +
            "                                                                                <a target=\"_blank\" href=\"\"\n" +
            "                                                                                    style=\"-webkit-text-size-adjust:none;-ms-text-size-adjust:none;mso-line-height-rule:exactly;text-decoration:none;display:block;font-family:arial, 'helvetica neue', helvetica, sans-serif;color:#999999;font-size:12px\">Visit\n" +
            "                                                                                    Us </a>\n" +
            "                                                                            </td>\n" +
            "                                                                            <td align=\"center\" valign=\"top\"\n" +
            "                                                                                width=\"33.33%\"\n" +
            "                                                                                style=\"Margin:0;padding-left:5px;padding-right:5px;padding-top:5px;padding-bottom:5px;border:0;border-left:1px solid #cccccc\">\n" +
            "                                                                                <a target=\"_blank\" href=\"\"\n" +
            "                                                                                    style=\"-webkit-text-size-adjust:none;-ms-text-size-adjust:none;mso-line-height-rule:exactly;text-decoration:none;display:block;font-family:arial, 'helvetica neue', helvetica, sans-serif;color:#999999;font-size:12px\">Privacy\n" +
            "                                                                                    Policy</a>\n" +
            "                                                                            </td>\n" +
            "                                                                            <td align=\"center\" valign=\"top\"\n" +
            "                                                                                width=\"33.33%\"\n" +
            "                                                                                style=\"Margin:0;padding-left:5px;padding-right:5px;padding-top:5px;padding-bottom:5px;border:0;border-left:1px solid #cccccc\">\n" +
            "                                                                                <a target=\"_blank\" href=\"\"\n" +
            "                                                                                    style=\"-webkit-text-size-adjust:none;-ms-text-size-adjust:none;mso-line-height-rule:exactly;text-decoration:none;display:block;font-family:arial, 'helvetica neue', helvetica, sans-serif;color:#999999;font-size:12px\">Terms\n" +
            "                                                                                    of Use</a>\n" +
            "                                                                            </td>\n" +
            "                                                                        </tr>\n" +
            "                                                                    </table>\n" +
            "                                                                </td>\n" +
            "                                                            </tr>\n" +
            "                                                        </table>\n" +
            "                                                    </td>\n" +
            "                                                </tr>\n" +
            "                                            </table>\n" +
            "                                        </td>\n" +
            "                                    </tr>\n" +
            "                                </table>\n" +
            "                            </td>\n" +
            "                        </tr>\n" +
            "                    </table>\n" +
            "                    <table cellpadding=\"0\" cellspacing=\"0\" class=\"es-content\" align=\"center\"\n" +
            "                        style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px;table-layout:fixed !important;width:100%\">\n" +
            "                        <tr>\n" +
            "                            <td class=\"es-info-area\" align=\"center\" style=\"padding:0;Margin:0\">\n" +
            "                                <table class=\"es-content-body\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\"\n" +
            "                                    style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px;background-color:transparent;width:600px\"\n" +
            "                                    bgcolor=\"#FFFFFF\">\n" +
            "                                    <tr>\n" +
            "                                        <td align=\"left\" style=\"padding:20px;Margin:0\">\n" +
            "                                            <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"\n" +
            "                                                style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px\">\n" +
            "                                                <tr>\n" +
            "                                                    <td align=\"center\" valign=\"top\"\n" +
            "                                                        style=\"padding:0;Margin:0;width:560px\">\n" +
            "                                                        <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"\n" +
            "                                                            role=\"presentation\"\n" +
            "                                                            style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px\">\n" +
            "                                                            <tr>\n" +
            "                                                                <td align=\"center\" class=\"es-infoblock\"\n" +
            "                                                                    style=\"padding:0;Margin:0;line-height:14px;font-size:12px;color:#CCCCCC\">\n" +
            "                                                                    <p\n" +
            "                                                                        style=\"Margin:0;-webkit-text-size-adjust:none;-ms-text-size-adjust:none;mso-line-height-rule:exactly;font-family:arial, 'helvetica neue', helvetica, sans-serif;line-height:14px;color:#CCCCCC;font-size:12px\">\n" +
            "                                                                        <a target=\"_blank\" href=\"\"\n" +
            "                                                                            style=\"-webkit-text-size-adjust:none;-ms-text-size-adjust:none;mso-line-height-rule:exactly;text-decoration:underline;color:#CCCCCC;font-size:12px\"></a>No\n" +
            "                                                                        longer want to receive these emails?&nbsp;<a\n" +
            "                                                                            href=\"\" target=\"_blank\"\n" +
            "                                                                            style=\"-webkit-text-size-adjust:none;-ms-text-size-adjust:none;mso-line-height-rule:exactly;text-decoration:underline;color:#CCCCCC;font-size:12px\">Unsubscribe</a>.<a\n" +
            "                                                                            target=\"_blank\" href=\"\"\n" +
            "                                                                            style=\"-webkit-text-size-adjust:none;-ms-text-size-adjust:none;mso-line-height-rule:exactly;text-decoration:underline;color:#CCCCCC;font-size:12px\"></a>\n" +
            "                                                                    </p>\n" +
            "                                                                </td>\n" +
            "                                                            </tr>\n" +
            "                                                        </table>\n" +
            "                                                    </td>\n" +
            "                                                </tr>\n" +
            "                                            </table>\n" +
            "                                        </td>\n" +
            "                                    </tr>\n" +
            "                                </table>\n" +
            "                            </td>\n" +
            "                        </tr>\n" +
            "                    </table>\n" +
            "                </td>\n" +
            "            </tr>\n" +
            "        </table>\n" +
            "    </div>\n" +
            "</body>\n" +
            "\n" +
            "</html>";
    public static final String cardProduct = "<tr>\n" +
            "<td class=\"esdev-adapt-off\" align=\"left\"\n" +
            "style=\"Margin:0;padding-top:10px;padding-bottom:10px;padding-left:20px;padding-right:20px\">\n" +
            "<table cellpadding=\"0\" cellspacing=\"0\" class=\"esdev-mso-table\"\n" +
            "    style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px;width:560px\">\n" +
            "    <tr>\n" +
            "        <td class=\"esdev-mso-td\" valign=\"top\" style=\"padding:0;Margin:0\">\n" +
            "            <table cellpadding=\"0\" cellspacing=\"0\" class=\"es-left\"\n" +
            "                align=\"left\"\n" +
            "                style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px;float:left\">\n" +
            "                <tr>\n" +
            "                    <td class=\"es-m-p0r\" align=\"center\"\n" +
            "                        style=\"padding:0;Margin:0;width:70px\">\n" +
            "                        <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"\n" +
            "                            role=\"presentation\"\n" +
            "                            style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px\">\n" +
            "                            <tr>\n" +
            "                                <td align=\"center\"\n" +
            "                                    style=\"padding:0;Margin:0;font-size:0px\">\n" +
            "                                    <img class=\"adapt-img\"\n" +
            "                                        src=\"https://xwefpf.stripocdn.email/content/guids/CABINET_c67048fd0acf81b47e18129166337c05/images/79021618299486570.png\"\n" +
            "                                        alt\n" +
            "                                        style=\"display:block;border:0;outline:none;text-decoration:none;-ms-interpolation-mode:bicubic\"\n" +
            "                                        width=\"70\"></td>\n" +
            "                            </tr>\n" +
            "                        </table>\n" +
            "                    </td>\n" +
            "                </tr>\n" +
            "            </table>\n" +
            "        </td>\n" +
            "        <td style=\"padding:0;Margin:0;width:20px\"></td>\n" +
            "        <td class=\"esdev-mso-td\" valign=\"top\" style=\"padding:0;Margin:0\">\n" +
            "            <table cellpadding=\"0\" cellspacing=\"0\" class=\"es-left\"\n" +
            "                align=\"left\"\n" +
            "                style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px;float:left\">\n" +
            "                <tr>\n" +
            "                    <td align=\"center\"\n" +
            "                        style=\"padding:0;Margin:0;width:265px\">\n" +
            "                        <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"\n" +
            "                            role=\"presentation\"\n" +
            "                            style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px\">\n" +
            "                            <tr>\n" +
            "                                <td align=\"left\" style=\"padding:0;Margin:0\">\n" +
            "                                    <p\n" +
            "                                        style=\"Margin:0;-webkit-text-size-adjust:none;-ms-text-size-adjust:none;mso-line-height-rule:exactly;font-family:arial, 'helvetica neue', helvetica, sans-serif;line-height:21px;color:#333333;font-size:14px\">\n" +
            "                                        <strong>:PRODUCT_NAME:</strong></p>\n" +
            "                                </td>\n" +
            "                            </tr>\n" +
            "                            <tr>\n" +
            "                                <td align=\"left\"\n" +
            "                                    style=\"padding:0;Margin:0;padding-top:5px\">\n" +
            "                                    <p\n" +
            "                                        style=\"Margin:0;-webkit-text-size-adjust:none;-ms-text-size-adjust:none;mso-line-height-rule:exactly;font-family:arial, 'helvetica neue', helvetica, sans-serif;line-height:21px;color:#333333;font-size:14px\">\n" +
            "                                        Color: :COLOR:</p>\n" +
            "                                </td>\n" +
            "                            </tr>\n" +
            "                        </table>\n" +
            "                    </td>\n" +
            "                </tr>\n" +
            "            </table>\n" +
            "        </td>\n" +
            "        <td style=\"padding:0;Margin:0;width:20px\"></td>\n" +
            "        <td class=\"esdev-mso-td\" valign=\"top\" style=\"padding:0;Margin:0\">\n" +
            "            <table cellpadding=\"0\" cellspacing=\"0\" class=\"es-left\"\n" +
            "                align=\"left\"\n" +
            "                style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px;float:left\">\n" +
            "                <tr>\n" +
            "                    <td align=\"left\" style=\"padding:0;Margin:0;width:80px\">\n" +
            "                        <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"\n" +
            "                            role=\"presentation\"\n" +
            "                            style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px\">\n" +
            "                            <tr>\n" +
            "                                <td align=\"center\"\n" +
            "                                    style=\"padding:0;Margin:0\">\n" +
            "                                    <p\n" +
            "                                        style=\"Margin:0;-webkit-text-size-adjust:none;-ms-text-size-adjust:none;mso-line-height-rule:exactly;font-family:arial, 'helvetica neue', helvetica, sans-serif;line-height:21px;color:#333333;font-size:14px\">\n" +
            "                                        :QUANTITY:</p>\n" +
            "                                </td>\n" +
            "                            </tr>\n" +
            "                        </table>\n" +
            "                    </td>\n" +
            "                </tr>\n" +
            "            </table>\n" +
            "        </td>\n" +
            "        <td style=\"padding:0;Margin:0;width:20px\"></td>\n" +
            "        <td class=\"esdev-mso-td\" valign=\"top\" style=\"padding:0;Margin:0\">\n" +
            "            <table cellpadding=\"0\" cellspacing=\"0\" class=\"es-right\"\n" +
            "                align=\"right\"\n" +
            "                style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px;float:right\">\n" +
            "                <tr>\n" +
            "                    <td align=\"left\" style=\"padding:0;Margin:0;width:85px\">\n" +
            "                        <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"\n" +
            "                            role=\"presentation\"\n" +
            "                            style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px\">\n" +
            "                            <tr>\n" +
            "                                <td align=\"right\"\n" +
            "                                    style=\"padding:0;Margin:0\">\n" +
            "                                    <p\n" +
            "                                        style=\"Margin:0;-webkit-text-size-adjust:none;-ms-text-size-adjust:none;mso-line-height-rule:exactly;font-family:arial, 'helvetica neue', helvetica, sans-serif;line-height:21px;color:#333333;font-size:14px\">\n" +
            "                                        :PRICE:</p>\n" +
            "                                </td>\n" +
            "                            </tr>\n" +
            "                        </table>\n" +
            "                    </td>\n" +
            "                </tr>\n" +
            "            </table>\n" +
            "        </td>\n" +
            "    </tr>\n" +
            "</table>\n" +
            "</td>\n" +
            "</tr>";
}
