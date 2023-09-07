import sender_stand_request
import data

def assert_status_code_success(response):
    assert response.status_code == 200

#Создание заказа и получение трека
def create_new_order_get_track():
    order_body = data.body_order.copy()
    response = sender_stand_request.post_new_order(order_body)
    return response.json()["track"]

#Проверка на получение заказа по треку со статусом 200 в ответе
def test_order():
    track = create_new_order_get_track()
    response = sender_stand_request.get_order(track)
    assert_status_code_success(response)
