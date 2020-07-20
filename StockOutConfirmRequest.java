package com.amg.stock.api.qimen.request;

@org.simpleframework.xml.Root(name = "request")
public class StockOutConfirmRequest {

    private OrderLinesBean orderLines;
    private DeliveryOrderBean deliveryOrder;
    private PackagesBean packages;

    public OrderLinesBean getOrderLines() {
        return orderLines;
    }

    public void setOrderLines(OrderLinesBean orderLines) {
        this.orderLines = orderLines;
    }

    public DeliveryOrderBean getDeliveryOrder() {
        return deliveryOrder;
    }

    public void setDeliveryOrder(DeliveryOrderBean deliveryOrder) {
        this.deliveryOrder = deliveryOrder;
    }

    public PackagesBean getPackages() {
        return packages;
    }

    public void setPackages(PackagesBean packages) {
        this.packages = packages;
    }

    @org.simpleframework.xml.Root(name = "orderLines")
    public static class OrderLinesBean {
        private OrderLineBean orderLine;

        public OrderLineBean getOrderLine() {
            return orderLine;
        }

        public void setOrderLine(OrderLineBean orderLine) {
            this.orderLine = orderLine;
        }

        @org.simpleframework.xml.Root(name = "orderLine")
        public static class OrderLineBean {
            private String outBizCode;
            private String orderLineNo;
            private String itemCode;
            private String itemId;
            private SnListBean snList;
            private String itemName;
            private String inventoryType;
            private String actualQty;
            private String batchCode;
            private String productDate;
            private String expireDate;
            private String produceCode;
            private BatchsBean batchs;

            public String getOutBizCode() {
                return outBizCode;
            }

            public void setOutBizCode(String outBizCode) {
                this.outBizCode = outBizCode;
            }

            public String getOrderLineNo() {
                return orderLineNo;
            }

            public void setOrderLineNo(String orderLineNo) {
                this.orderLineNo = orderLineNo;
            }

            public String getItemCode() {
                return itemCode;
            }

            public void setItemCode(String itemCode) {
                this.itemCode = itemCode;
            }

            public String getItemId() {
                return itemId;
            }

            public void setItemId(String itemId) {
                this.itemId = itemId;
            }

            public SnListBean getSnList() {
                return snList;
            }

            public void setSnList(SnListBean snList) {
                this.snList = snList;
            }

            public String getItemName() {
                return itemName;
            }

            public void setItemName(String itemName) {
                this.itemName = itemName;
            }

            public String getInventoryType() {
                return inventoryType;
            }

            public void setInventoryType(String inventoryType) {
                this.inventoryType = inventoryType;
            }

            public String getActualQty() {
                return actualQty;
            }

            public void setActualQty(String actualQty) {
                this.actualQty = actualQty;
            }

            public String getBatchCode() {
                return batchCode;
            }

            public void setBatchCode(String batchCode) {
                this.batchCode = batchCode;
            }

            public String getProductDate() {
                return productDate;
            }

            public void setProductDate(String productDate) {
                this.productDate = productDate;
            }

            public String getExpireDate() {
                return expireDate;
            }

            public void setExpireDate(String expireDate) {
                this.expireDate = expireDate;
            }

            public String getProduceCode() {
                return produceCode;
            }

            public void setProduceCode(String produceCode) {
                this.produceCode = produceCode;
            }

            public BatchsBean getBatchs() {
                return batchs;
            }

            public void setBatchs(BatchsBean batchs) {
                this.batchs = batchs;
            }

            @org.simpleframework.xml.Root(name = "snList")
            public static class SnListBean {
                private String sn;

                public String getSn() {
                    return sn;
                }

                public void setSn(String sn) {
                    this.sn = sn;
                }
            }

            @org.simpleframework.xml.Root(name = "batchs")
            public static class BatchsBean {
                private BatchBean batch;

                public BatchBean getBatch() {
                    return batch;
                }

                public void setBatch(BatchBean batch) {
                    this.batch = batch;
                }

                @org.simpleframework.xml.Root(name = "batch")
                public static class BatchBean {
                    private String batchCode;
                    private String productDate;
                    private String expireDate;
                    private String produceCode;
                    private String inventoryType;
                    private String actualQty;

                    public String getBatchCode() {
                        return batchCode;
                    }

                    public void setBatchCode(String batchCode) {
                        this.batchCode = batchCode;
                    }

                    public String getProductDate() {
                        return productDate;
                    }

                    public void setProductDate(String productDate) {
                        this.productDate = productDate;
                    }

                    public String getExpireDate() {
                        return expireDate;
                    }

                    public void setExpireDate(String expireDate) {
                        this.expireDate = expireDate;
                    }

                    public String getProduceCode() {
                        return produceCode;
                    }

                    public void setProduceCode(String produceCode) {
                        this.produceCode = produceCode;
                    }

                    public String getInventoryType() {
                        return inventoryType;
                    }

                    public void setInventoryType(String inventoryType) {
                        this.inventoryType = inventoryType;
                    }

                    public String getActualQty() {
                        return actualQty;
                    }

                    public void setActualQty(String actualQty) {
                        this.actualQty = actualQty;
                    }
                }
            }
        }
    }

    @org.simpleframework.xml.Root(name = "deliveryOrder")
    public static class DeliveryOrderBean {
        private String totalOrderLines;
        private String deliveryOrderCode;
        private String deliveryOrderId;
        private String warehouseCode;
        private String orderType;
        private String status;
        private String outBizCode;
        private String confirmType;
        private String logisticsCode;
        private String logisticsName;
        private String expressCode;
        private String orderConfirmTime;

        public String getTotalOrderLines() {
            return totalOrderLines;
        }

        public void setTotalOrderLines(String totalOrderLines) {
            this.totalOrderLines = totalOrderLines;
        }

        public String getDeliveryOrderCode() {
            return deliveryOrderCode;
        }

        public void setDeliveryOrderCode(String deliveryOrderCode) {
            this.deliveryOrderCode = deliveryOrderCode;
        }

        public String getDeliveryOrderId() {
            return deliveryOrderId;
        }

        public void setDeliveryOrderId(String deliveryOrderId) {
            this.deliveryOrderId = deliveryOrderId;
        }

        public String getWarehouseCode() {
            return warehouseCode;
        }

        public void setWarehouseCode(String warehouseCode) {
            this.warehouseCode = warehouseCode;
        }

        public String getOrderType() {
            return orderType;
        }

        public void setOrderType(String orderType) {
            this.orderType = orderType;
        }

        public String getStatus() {
            return status;
        }

        public void setStatus(String status) {
            this.status = status;
        }

        public String getOutBizCode() {
            return outBizCode;
        }

        public void setOutBizCode(String outBizCode) {
            this.outBizCode = outBizCode;
        }

        public String getConfirmType() {
            return confirmType;
        }

        public void setConfirmType(String confirmType) {
            this.confirmType = confirmType;
        }

        public String getLogisticsCode() {
            return logisticsCode;
        }

        public void setLogisticsCode(String logisticsCode) {
            this.logisticsCode = logisticsCode;
        }

        public String getLogisticsName() {
            return logisticsName;
        }

        public void setLogisticsName(String logisticsName) {
            this.logisticsName = logisticsName;
        }

        public String getExpressCode() {
            return expressCode;
        }

        public void setExpressCode(String expressCode) {
            this.expressCode = expressCode;
        }

        public String getOrderConfirmTime() {
            return orderConfirmTime;
        }

        public void setOrderConfirmTime(String orderConfirmTime) {
            this.orderConfirmTime = orderConfirmTime;
        }
    }

    @org.simpleframework.xml.Root(name = "packages")
    public static class PackagesBean {
        @org.simpleframework.xml.Element(name = "package", required = false)
        private PackageBean packageX;

        public PackageBean getPackageX() {
            return packageX;
        }

        public void setPackageX(PackageBean packageX) {
            this.packageX = packageX;
        }

        @org.simpleframework.xml.Root(name = "package")
        public static class PackageBean {
            private String logisticsName;
            private String logisticsCode;
            private String expressCode;
            private String packageCode;
            private String length;
            private String width;
            private String height;
            private String weight;
            private String volume;
            private PackageMaterialListBean packageMaterialList;
            private ItemsBean items;

            public String getLogisticsName() {
                return logisticsName;
            }

            public void setLogisticsName(String logisticsName) {
                this.logisticsName = logisticsName;
            }

            public String getLogisticsCode() {
                return logisticsCode;
            }

            public void setLogisticsCode(String logisticsCode) {
                this.logisticsCode = logisticsCode;
            }

            public String getExpressCode() {
                return expressCode;
            }

            public void setExpressCode(String expressCode) {
                this.expressCode = expressCode;
            }

            public String getPackageCode() {
                return packageCode;
            }

            public void setPackageCode(String packageCode) {
                this.packageCode = packageCode;
            }

            public String getLength() {
                return length;
            }

            public void setLength(String length) {
                this.length = length;
            }

            public String getWidth() {
                return width;
            }

            public void setWidth(String width) {
                this.width = width;
            }

            public String getHeight() {
                return height;
            }

            public void setHeight(String height) {
                this.height = height;
            }

            public String getWeight() {
                return weight;
            }

            public void setWeight(String weight) {
                this.weight = weight;
            }

            public String getVolume() {
                return volume;
            }

            public void setVolume(String volume) {
                this.volume = volume;
            }

            public PackageMaterialListBean getPackageMaterialList() {
                return packageMaterialList;
            }

            public void setPackageMaterialList(PackageMaterialListBean packageMaterialList) {
                this.packageMaterialList = packageMaterialList;
            }

            public ItemsBean getItems() {
                return items;
            }

            public void setItems(ItemsBean items) {
                this.items = items;
            }

            @org.simpleframework.xml.Root(name = "packageMaterialList")
            public static class PackageMaterialListBean {
                private PackageMaterialBean packageMaterial;

                public PackageMaterialBean getPackageMaterial() {
                    return packageMaterial;
                }

                public void setPackageMaterial(PackageMaterialBean packageMaterial) {
                    this.packageMaterial = packageMaterial;
                }

                @org.simpleframework.xml.Root(name = "packageMaterial")
                public static class PackageMaterialBean {
                    private String type;
                    private String quantity;

                    public String getType() {
                        return type;
                    }

                    public void setType(String type) {
                        this.type = type;
                    }

                    public String getQuantity() {
                        return quantity;
                    }

                    public void setQuantity(String quantity) {
                        this.quantity = quantity;
                    }
                }
            }

            @org.simpleframework.xml.Root(name = "items")
            public static class ItemsBean {
                private ItemBean item;

                public ItemBean getItem() {
                    return item;
                }

                public void setItem(ItemBean item) {
                    this.item = item;
                }

                @org.simpleframework.xml.Root(name = "item")
                public static class ItemBean {
                    private String itemCode;
                    private String itemId;
                    private String quantity;

                    public String getItemCode() {
                        return itemCode;
                    }

                    public void setItemCode(String itemCode) {
                        this.itemCode = itemCode;
                    }

                    public String getItemId() {
                        return itemId;
                    }

                    public void setItemId(String itemId) {
                        this.itemId = itemId;
                    }

                    public String getQuantity() {
                        return quantity;
                    }

                    public void setQuantity(String quantity) {
                        this.quantity = quantity;
                    }
                }
            }
        }
    }
}
