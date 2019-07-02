# frozen_string_literal: true

require "./gate"
require "./ticket"

umeda = Gate.new(:umeda)
mikuni = Gate.new(:mikuni)

# 150円のきっぷを購入して梅田で乗車し、三国で降車する(NG)
ticket = Ticket.new(150)
umeda.enter(ticket)
mikuni.exit(ticket)

# 190円できっぷを購入して梅田で乗車し、三国で降車する(OK)
ticket = Ticket.new(190)
umeda.enter(ticket)
mikuni.exit(ticket)
