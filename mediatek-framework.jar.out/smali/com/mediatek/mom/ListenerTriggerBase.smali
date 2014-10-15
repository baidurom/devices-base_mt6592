.class public abstract Lcom/mediatek/mom/ListenerTriggerBase;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:Landroid/os/IBinder;

.field private d:Landroid/os/Bundle;

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(IILandroid/os/IBinder;Landroid/os/Bundle;I)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput v0, p0, Lcom/mediatek/mom/ListenerTriggerBase;->a:I

    .line 45
    iput v0, p0, Lcom/mediatek/mom/ListenerTriggerBase;->b:I

    .line 46
    iput-object v1, p0, Lcom/mediatek/mom/ListenerTriggerBase;->c:Landroid/os/IBinder;

    .line 47
    iput-object v1, p0, Lcom/mediatek/mom/ListenerTriggerBase;->d:Landroid/os/Bundle;

    .line 48
    iput v0, p0, Lcom/mediatek/mom/ListenerTriggerBase;->e:I

    .line 49
    iput-boolean v0, p0, Lcom/mediatek/mom/ListenerTriggerBase;->f:Z

    .line 50
    iput-boolean v0, p0, Lcom/mediatek/mom/ListenerTriggerBase;->g:Z

    .line 51
    iput-object v1, p0, Lcom/mediatek/mom/ListenerTriggerBase;->h:Landroid/os/IBinder;

    .line 54
    invoke-direct/range {p0 .. p5}, Lcom/mediatek/mom/ListenerTriggerBase;->a(IILandroid/os/IBinder;Landroid/os/Bundle;I)V

    .line 55
    iput-object v1, p0, Lcom/mediatek/mom/ListenerTriggerBase;->h:Landroid/os/IBinder;

    .line 56
    return-void
.end method

.method public constructor <init>(IILandroid/os/IBinder;Landroid/os/Bundle;ILandroid/os/IBinder;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput v0, p0, Lcom/mediatek/mom/ListenerTriggerBase;->a:I

    .line 45
    iput v0, p0, Lcom/mediatek/mom/ListenerTriggerBase;->b:I

    .line 46
    iput-object v1, p0, Lcom/mediatek/mom/ListenerTriggerBase;->c:Landroid/os/IBinder;

    .line 47
    iput-object v1, p0, Lcom/mediatek/mom/ListenerTriggerBase;->d:Landroid/os/Bundle;

    .line 48
    iput v0, p0, Lcom/mediatek/mom/ListenerTriggerBase;->e:I

    .line 49
    iput-boolean v0, p0, Lcom/mediatek/mom/ListenerTriggerBase;->f:Z

    .line 50
    iput-boolean v0, p0, Lcom/mediatek/mom/ListenerTriggerBase;->g:Z

    .line 51
    iput-object v1, p0, Lcom/mediatek/mom/ListenerTriggerBase;->h:Landroid/os/IBinder;

    .line 59
    invoke-direct/range {p0 .. p5}, Lcom/mediatek/mom/ListenerTriggerBase;->a(IILandroid/os/IBinder;Landroid/os/Bundle;I)V

    .line 60
    iput-object p6, p0, Lcom/mediatek/mom/ListenerTriggerBase;->h:Landroid/os/IBinder;

    .line 61
    return-void
.end method

.method private a(IILandroid/os/IBinder;Landroid/os/Bundle;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 64
    iput p1, p0, Lcom/mediatek/mom/ListenerTriggerBase;->a:I

    .line 65
    iput p2, p0, Lcom/mediatek/mom/ListenerTriggerBase;->b:I

    .line 66
    iput-object p3, p0, Lcom/mediatek/mom/ListenerTriggerBase;->c:Landroid/os/IBinder;

    .line 67
    iput-object p4, p0, Lcom/mediatek/mom/ListenerTriggerBase;->d:Landroid/os/Bundle;

    .line 68
    iput p5, p0, Lcom/mediatek/mom/ListenerTriggerBase;->e:I

    .line 69
    iput-boolean v0, p0, Lcom/mediatek/mom/ListenerTriggerBase;->f:Z

    .line 70
    iput-boolean v0, p0, Lcom/mediatek/mom/ListenerTriggerBase;->g:Z

    .line 71
    return-void
.end method


# virtual methods
.method public completed()V
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/mom/ListenerTriggerBase;->f:Z

    .line 100
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 143
    if-ne p0, p1, :cond_1

    .line 153
    :cond_0
    :goto_0
    return v0

    .line 147
    :cond_1
    instance-of v2, p1, Lcom/mediatek/mom/ListenerTriggerBase;

    if-nez v2, :cond_2

    move v0, v1

    .line 148
    goto :goto_0

    .line 151
    :cond_2
    check-cast p1, Lcom/mediatek/mom/ListenerTriggerBase;

    .line 153
    iget v2, p0, Lcom/mediatek/mom/ListenerTriggerBase;->a:I

    invoke-virtual {p1}, Lcom/mediatek/mom/ListenerTriggerBase;->getControllerID()I

    move-result v3

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getCallback()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/mediatek/mom/ListenerTriggerBase;->h:Landroid/os/IBinder;

    return-object v0
.end method

.method public getCallingPid()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/mediatek/mom/ListenerTriggerBase;->b:I

    return v0
.end method

.method public getControllerID()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/mediatek/mom/ListenerTriggerBase;->a:I

    return v0
.end method

.method public getFunc()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/mediatek/mom/ListenerTriggerBase;->c:Landroid/os/IBinder;

    return-object v0
.end method

.method public getParams()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/mediatek/mom/ListenerTriggerBase;->d:Landroid/os/Bundle;

    return-object v0
.end method

.method public getResult()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/mediatek/mom/ListenerTriggerBase;->e:I

    return v0
.end method

.method public isCompleted()Z
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/mediatek/mom/ListenerTriggerBase;->f:Z

    return v0
.end method

.method public isTimeouted()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/mediatek/mom/ListenerTriggerBase;->g:Z

    return v0
.end method

.method public abstract onTriggerListenerDone()V
.end method

.method public abstract onTriggerListenerTimeout()V
.end method

.method public setResult(I)V
    .locals 0
    .parameter

    .prologue
    .line 115
    iput p1, p0, Lcom/mediatek/mom/ListenerTriggerBase;->e:I

    .line 116
    return-void
.end method

.method public timeouted()V
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/mom/ListenerTriggerBase;->g:Z

    .line 108
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ListenerTriggerBase {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/mom/ListenerTriggerBase;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/mom/ListenerTriggerBase;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/mom/ListenerTriggerBase;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/mom/ListenerTriggerBase;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/mom/ListenerTriggerBase;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/mom/ListenerTriggerBase;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract triggerListenerFunc()I
.end method
