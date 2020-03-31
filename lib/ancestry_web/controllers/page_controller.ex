defmodule AncestryWeb.PageController do
  use AncestryWeb, :controller
  alias Ancestry.MailingList

  def index(conn, _params) do
    conn
    |> put_layout("app-hero.html")
    |> render("index.html", page: nil)
  end

  def add_email_to_list(conn, %{"email" => %{"email" => email}}) do
    MailingList.add_email_to_mailing_list(email)

    conn
    |> put_flash(:info, "Thank You!")
    |> redirect(to: Routes.page_path(conn, :index) <> "#thankyou")
  end

  def tos_pp(conn, _params) do
    conn
    |> put_layout("app.html")
    |> render("terms-of-service-and-privacy-policy.html")
  end
end
