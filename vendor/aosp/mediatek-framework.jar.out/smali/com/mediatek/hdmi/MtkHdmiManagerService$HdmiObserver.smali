.class Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;
.super Landroid/os/UEventObserver;
.source "MtkHdmiManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/hdmi/MtkHdmiManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HdmiObserver"
.end annotation


# static fields
.field private static final HDMI_NAME_PATH:Ljava/lang/String; = "/sys/class/switch/hdmi/name"

.field private static final HDMI_STATE_PATH:Ljava/lang/String; = "/sys/class/switch/hdmi/state"

.field private static final HDMI_UEVENT_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/switch/hdmi"

.field private static final TAG:Ljava/lang/String; = "HdmiObserver"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mHdmiName:Ljava/lang/String;

.field private mHdmiState:I

.field private mPrevHdmiState:I

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field final synthetic this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;


# direct methods
.method public constructor <init>(Lcom/mediatek/hdmi/MtkHdmiManagerService;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "context"

    .prologue
    .line 712
    iput-object p1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    .line 851
    new-instance v1, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver$1;

    invoke-direct {v1, p0}, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver$1;-><init>(Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;)V

    iput-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;->mHandler:Landroid/os/Handler;

    .line 713
    iput-object p2, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;->mContext:Landroid/content/Context;

    .line 714
    const-string v1, "power"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 716
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "HdmiObserver"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 718
    iget-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 719
    invoke-direct {p0}, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;->init()V

    .line 720
    return-void
.end method

.method static synthetic access$1400(Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;IILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 698
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;->sendIntents(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 698
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method private getContentFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "filePath"

    .prologue
    .line 762
    const/16 v6, 0x400

    new-array v0, v6, [C

    .line 763
    .local v0, buffer:[C
    const/4 v4, 0x0

    .line 764
    .local v4, reader:Ljava/io/FileReader;
    const/4 v1, 0x0

    .line 766
    .local v1, content:Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_5

    .line 767
    .end local v4           #reader:Ljava/io/FileReader;
    .local v5, reader:Ljava/io/FileReader;
    const/4 v6, 0x0

    :try_start_1
    array-length v7, v0

    invoke-virtual {v5, v0, v6, v7}, Ljava/io/FileReader;->read([CII)I

    move-result v3

    .line 768
    .local v3, len:I
    const/4 v6, 0x0

    invoke-static {v0, v6, v3}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 769
    const-string v6, "HdmiObserver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " content is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V
    invoke-static {v6, v7}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->access$000(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_8

    .line 777
    if-eqz v5, :cond_2

    .line 779
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v4, v5

    .line 785
    .end local v3           #len:I
    .end local v5           #reader:Ljava/io/FileReader;
    .restart local v4       #reader:Ljava/io/FileReader;
    :cond_0
    :goto_0
    return-object v1

    .line 780
    .end local v4           #reader:Ljava/io/FileReader;
    .restart local v3       #len:I
    .restart local v5       #reader:Ljava/io/FileReader;
    :catch_0
    move-exception v2

    .line 781
    .local v2, e:Ljava/io/IOException;
    const-string v6, "HdmiObserver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "close reader fail: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .line 782
    .end local v5           #reader:Ljava/io/FileReader;
    .restart local v4       #reader:Ljava/io/FileReader;
    goto :goto_0

    .line 770
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #len:I
    :catch_1
    move-exception v2

    .line 771
    .local v2, e:Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    const-string v6, "HdmiObserver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "can\'t find file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 777
    if-eqz v4, :cond_0

    .line 779
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 780
    :catch_2
    move-exception v2

    .line 781
    .local v2, e:Ljava/io/IOException;
    const-string v6, "HdmiObserver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "close reader fail: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 772
    .end local v2           #e:Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 773
    .restart local v2       #e:Ljava/io/IOException;
    :goto_2
    :try_start_5
    const-string v6, "HdmiObserver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IO exception when read file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 777
    if-eqz v4, :cond_0

    .line 779
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 780
    :catch_4
    move-exception v2

    .line 781
    const-string v6, "HdmiObserver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "close reader fail: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 774
    .end local v2           #e:Ljava/io/IOException;
    :catch_5
    move-exception v2

    .line 775
    .local v2, e:Ljava/lang/IndexOutOfBoundsException;
    :goto_3
    :try_start_7
    const-string v6, "HdmiObserver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "index exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 777
    if-eqz v4, :cond_0

    .line 779
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto/16 :goto_0

    .line 780
    :catch_6
    move-exception v2

    .line 781
    .local v2, e:Ljava/io/IOException;
    const-string v6, "HdmiObserver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "close reader fail: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 777
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_4
    if-eqz v4, :cond_1

    .line 779
    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 782
    :cond_1
    :goto_5
    throw v6

    .line 780
    :catch_7
    move-exception v2

    .line 781
    .restart local v2       #e:Ljava/io/IOException;
    const-string v7, "HdmiObserver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "close reader fail: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 777
    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #reader:Ljava/io/FileReader;
    .restart local v5       #reader:Ljava/io/FileReader;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5           #reader:Ljava/io/FileReader;
    .restart local v4       #reader:Ljava/io/FileReader;
    goto :goto_4

    .line 774
    .end local v4           #reader:Ljava/io/FileReader;
    .restart local v5       #reader:Ljava/io/FileReader;
    :catch_8
    move-exception v2

    move-object v4, v5

    .end local v5           #reader:Ljava/io/FileReader;
    .restart local v4       #reader:Ljava/io/FileReader;
    goto :goto_3

    .line 772
    .end local v4           #reader:Ljava/io/FileReader;
    .restart local v5       #reader:Ljava/io/FileReader;
    :catch_9
    move-exception v2

    move-object v4, v5

    .end local v5           #reader:Ljava/io/FileReader;
    .restart local v4       #reader:Ljava/io/FileReader;
    goto/16 :goto_2

    .line 770
    .end local v4           #reader:Ljava/io/FileReader;
    .restart local v5       #reader:Ljava/io/FileReader;
    :catch_a
    move-exception v2

    move-object v4, v5

    .end local v5           #reader:Ljava/io/FileReader;
    .restart local v4       #reader:Ljava/io/FileReader;
    goto/16 :goto_1

    .end local v4           #reader:Ljava/io/FileReader;
    .restart local v3       #len:I
    .restart local v5       #reader:Ljava/io/FileReader;
    :cond_2
    move-object v4, v5

    .end local v5           #reader:Ljava/io/FileReader;
    .restart local v4       #reader:Ljava/io/FileReader;
    goto/16 :goto_0
.end method

.method private init()V
    .locals 5

    .prologue
    .line 748
    iget-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;->mHdmiName:Ljava/lang/String;

    .line 749
    .local v1, newName:Ljava/lang/String;
    iget v2, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;->mHdmiState:I

    .line 750
    .local v2, newState:I
    iget v3, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;->mHdmiState:I

    iput v3, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;->mPrevHdmiState:I

    .line 751
    const-string v3, "/sys/class/switch/hdmi/name"

    invoke-direct {p0, v3}, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;->getContentFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 753
    :try_start_0
    const-string v3, "/sys/class/switch/hdmi/state"

    invoke-direct {p0, v3}, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;->getContentFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 758
    :goto_0
    invoke-direct {p0, v1, v2}, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;->update(Ljava/lang/String;I)V

    .line 759
    return-void

    .line 755
    :catch_0
    move-exception v0

    .line 756
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v3, "HdmiObserver"

    const-string v4, "HDMI state fail"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendIntent(IIILjava/lang/String;)V
    .locals 5
    .parameter "hdmi"
    .parameter "hdmiState"
    .parameter "prevHdmiState"
    .parameter "hdmiName"

    .prologue
    .line 834
    and-int v2, p2, p1

    and-int v3, p3, p1

    if-eq v2, v3, :cond_1

    .line 835
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.HDMI_PLUG"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 836
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x4000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 837
    const/4 v1, 0x0

    .line 838
    .local v1, state:I
    and-int v2, p2, p1

    if-eqz v2, :cond_0

    .line 839
    const/4 v1, 0x1

    .line 841
    :cond_0
    const-string v2, "state"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 842
    const-string v2, "name"

    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 843
    const-string v2, "HdmiObserver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HdmiObserver: Broadcast HDMI event, state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V
    invoke-static {v2, v3}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->access$000(Ljava/lang/String;Ljava/lang/Object;)V

    .line 845
    iget-object v2, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 846
    iget-object v2, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    #getter for: Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHandler:Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;
    invoke-static {v2}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->access$1100(Lcom/mediatek/hdmi/MtkHdmiManagerService;)Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 849
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #state:I
    :cond_1
    return-void
.end method

.method private declared-synchronized sendIntents(IILjava/lang/String;)V
    .locals 2
    .parameter "hdmiState"
    .parameter "prevHdmiState"
    .parameter "hdmiName"

    .prologue
    .line 827
    monitor-enter p0

    const/4 v0, 0x1

    .line 829
    .local v0, curHdmi:I
    :try_start_0
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;->sendIntent(IIILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 830
    monitor-exit p0

    return-void

    .line 827
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized update(Ljava/lang/String;I)V
    .locals 9
    .parameter "newName"
    .parameter "newState"

    .prologue
    .line 789
    monitor-enter p0

    :try_start_0
    const-string v3, "HdmiObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HDMIOberver.update(), oldState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;->mHdmiState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", newState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V
    invoke-static {v3, v4}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->access$000(Ljava/lang/String;Ljava/lang/Object;)V

    .line 792
    move v1, p2

    .line 793
    .local v1, hdmiState:I
    iget v3, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;->mHdmiState:I

    or-int v2, v1, v3

    .line 794
    .local v2, newOrOld:I
    const/4 v0, 0x0

    .line 812
    .local v0, delay:I
    iget v3, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;->mHdmiState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v3, v1, :cond_0

    add-int/lit8 v3, v2, -0x1

    and-int/2addr v3, v2

    if-eqz v3, :cond_1

    .line 823
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 817
    :cond_1
    :try_start_1
    iput-object p1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;->mHdmiName:Ljava/lang/String;

    .line 818
    iget v3, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;->mHdmiState:I

    iput v3, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;->mPrevHdmiState:I

    .line 819
    iput v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;->mHdmiState:I

    .line 820
    iget-object v3, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 821
    iget-object v3, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    iget v6, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;->mHdmiState:I

    iget v7, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;->mPrevHdmiState:I

    iget-object v8, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;->mHdmiName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    int-to-long v5, v0

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 789
    .end local v0           #delay:I
    .end local v1           #hdmiState:I
    .end local v2           #newOrOld:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 6
    .parameter "event"

    .prologue
    .line 732
    const-string v3, "HdmiObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HdmiObserver: onUEvent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V
    invoke-static {v3, v4}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->access$000(Ljava/lang/String;Ljava/lang/Object;)V

    .line 733
    const-string v3, "SWITCH_NAME"

    invoke-virtual {p1, v3}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 734
    .local v1, name:Ljava/lang/String;
    const/4 v2, 0x0

    .line 736
    .local v2, state:I
    :try_start_0
    const-string v3, "SWITCH_STATE"

    invoke-virtual {p1, v3}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 742
    :goto_0
    const-string v3, "HdmiObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HdmiObserver.onUEvent(), name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V
    invoke-static {v3, v4}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->access$000(Ljava/lang/String;Ljava/lang/Object;)V

    .line 744
    invoke-direct {p0, v1, v2}, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;->update(Ljava/lang/String;I)V

    .line 745
    return-void

    .line 737
    :catch_0
    move-exception v0

    .line 738
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v3, "HdmiObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HdmiObserver: Could not parse switch state from event "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startObserve()V
    .locals 1

    .prologue
    .line 723
    const-string v0, "DEVPATH=/devices/virtual/switch/hdmi"

    invoke-virtual {p0, v0}, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;->startObserving(Ljava/lang/String;)V

    .line 724
    return-void
.end method

.method public stopObserve()V
    .locals 0

    .prologue
    .line 727
    invoke-virtual {p0}, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;->stopObserving()V

    .line 728
    return-void
.end method
