.PHONY: proto

PROTO_DIR=protobuf/proto
GEN_DIR=./protobuf/gen/go
VALIDATE_DIR=./protobuf

proto:
	protoc -I $(PROTO_DIR) \
		$(PROTO_DIR)/user/user.proto \
		$(PROTO_DIR)/order/order.proto \
		$(PROTO_DIR)/spot/spot.proto \
		--go_out=$(GEN_DIR) \
		--go_opt=paths=source_relative \
		--go-grpc_out=$(GEN_DIR) \
		--go-grpc_opt=paths=source_relative \
		--validate_out=lang=go:$(VALIDATE_DIR)

#protoc -I protobuf/proto protobuf/proto/user/user.proto 
#--go_out=./protobuf/gen/go
# --go_opt=paths=source_relative
#  --go-grpc_out=./protobuf/gen/go/
#   --go-grpc_opt=paths=source_relative
#    --validate_out=lang=go:./protobuf