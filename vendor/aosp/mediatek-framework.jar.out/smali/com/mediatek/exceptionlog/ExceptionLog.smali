.class public Lcom/mediatek/exceptionlog/ExceptionLog;
.super Ljava/lang/Object;
.source "ExceptionLog.java"

# interfaces
.implements Lcom/mediatek/common/aee/IExceptionLog;


# static fields
.field public static final AEE_EXCEPTION_JNI:B = 0x1t

.field public static final AEE_WARNING_JNI:B = 0x0t

.field public static final TAG:Ljava/lang/String; = "AES"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 69
    const-string v0, "AES"

    const-string v1, "load Exception Log jni"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const-string v0, "mediatek_exceptionlog"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAllThreadStackTraces()Ljava/lang/String;
    .locals 16

    .prologue
    .line 150
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v10

    .line 151
    .local v10, st:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    new-instance v12, Ljava/io/StringWriter;

    invoke-direct {v12}, Ljava/io/StringWriter;-><init>()V

    .line 155
    .local v12, traces:Ljava/io/Writer;
    :try_start_0
    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 156
    .local v2, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/StackTraceElement;

    .line 157
    .local v3, el:[Ljava/lang/StackTraceElement;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Thread;

    .line 159
    .local v11, th:Ljava/lang/Thread;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v11}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v11}, Ljava/lang/Thread;->isDaemon()Z

    move-result v13

    if-eqz v13, :cond_0

    const-string v13, "daemon"

    :goto_1
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " prio="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v11}, Ljava/lang/Thread;->getPriority()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " Thread id="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v11}, Ljava/lang/Thread;->getId()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v11}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 164
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/StackTraceElement;
    array-length v7, v0

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_2
    if-ge v6, v7, :cond_1

    aget-object v8, v0, v6

    .line 165
    .local v8, line:Ljava/lang/StackTraceElement;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\t"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 164
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 159
    .end local v0           #arr$:[Ljava/lang/StackTraceElement;
    .end local v6           #i$:I
    .end local v7           #len$:I
    .end local v8           #line:Ljava/lang/StackTraceElement;
    :cond_0
    const-string v13, ""

    goto :goto_1

    .line 167
    .restart local v0       #arr$:[Ljava/lang/StackTraceElement;
    .restart local v6       #i$:I
    .restart local v7       #len$:I
    :cond_1
    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 170
    .end local v0           #arr$:[Ljava/lang/StackTraceElement;
    .end local v2           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    .end local v3           #el:[Ljava/lang/StackTraceElement;
    .end local v6           #i$:I
    .end local v7           #len$:I
    .end local v11           #th:Ljava/lang/Thread;
    :catch_0
    move-exception v1

    .line 171
    .local v1, e:Ljava/io/IOException;
    const-string v9, "IOException"

    .line 176
    .end local v1           #e:Ljava/io/IOException;
    :goto_3
    return-object v9

    .line 169
    :cond_2
    :try_start_1
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v9

    .local v9, ret_traces:Ljava/lang/String;
    goto :goto_3

    .line 172
    .end local v9           #ret_traces:Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 173
    .local v4, err:Ljava/lang/OutOfMemoryError;
    const-string v9, "java.lang.OutOfMemoryError"

    goto :goto_3
.end method

.method private static native getNativeExceptionPidListImpl([I)Z
.end method

.method private static getThreadStackTrace()Ljava/lang/String;
    .locals 13

    .prologue
    .line 120
    new-instance v9, Ljava/io/StringWriter;

    invoke-direct {v9}, Ljava/io/StringWriter;-><init>()V

    .line 124
    .local v9, traces:Ljava/io/Writer;
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    .line 125
    .local v8, th:Ljava/lang/Thread;
    invoke-virtual {v8}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    .line 127
    .local v7, st:[Ljava/lang/StackTraceElement;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v8}, Ljava/lang/Thread;->isDaemon()Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v10, "daemon"

    :goto_0
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " prio="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Ljava/lang/Thread;->getPriority()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " Thread id="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Ljava/lang/Thread;->getId()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 131
    move-object v0, v7

    .local v0, arr$:[Ljava/lang/StackTraceElement;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v5, v0, v3

    .line 132
    .local v5, line:Ljava/lang/StackTraceElement;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\t"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 131
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 127
    .end local v0           #arr$:[Ljava/lang/StackTraceElement;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #line:Ljava/lang/StackTraceElement;
    :cond_0
    const-string v10, ""

    goto :goto_0

    .line 134
    .restart local v0       #arr$:[Ljava/lang/StackTraceElement;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    :cond_1
    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 142
    .end local v0           #arr$:[Ljava/lang/StackTraceElement;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v7           #st:[Ljava/lang/StackTraceElement;
    .end local v8           #th:Ljava/lang/Thread;
    :goto_2
    return-object v6

    .line 136
    :catch_0
    move-exception v1

    .line 137
    .local v1, e:Ljava/io/IOException;
    const-string v6, "IOException"

    goto :goto_2

    .line 138
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 139
    .local v2, err:Ljava/lang/OutOfMemoryError;
    const-string v6, "java.lang.OutOfMemoryError"

    goto :goto_2
.end method

.method private static native report(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
.end method

.method private static native systemreportImpl(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method


# virtual methods
.method public getNativeExceptionPidList([I)Z
    .locals 1
    .parameter "pidList"

    .prologue
    .line 111
    invoke-static {p1}, Lcom/mediatek/exceptionlog/ExceptionLog;->getNativeExceptionPidListImpl([I)Z

    move-result v0

    return v0
.end method

.method public handle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 20
    .parameter "type"
    .parameter "info"
    .parameter "pid"

    .prologue
    .line 74
    const-string v3, "AES"

    const-string v5, "Exception Log handling..."

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const-string v1, ""

    .line 77
    .local v1, proc:Ljava/lang/String;
    const-string v2, ""

    .line 78
    .local v2, pkgs:Ljava/lang/String;
    const-string v19, ""

    .line 79
    .local v19, traceback:Ljava/lang/String;
    const-string v11, ""

    .line 80
    .local v11, cause:Ljava/lang/String;
    const-string v4, ""

    .line 81
    .local v4, detail:Ljava/lang/String;
    const-wide/16 v6, 0x0

    .line 83
    .local v6, lpid:J
    const-string v3, "\n+"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 84
    .local v18, splitInfo:[Ljava/lang/String;
    const-string v9, "^Process:\\s+(.*)"

    .line 85
    .local v9, PROC_REGEX:Ljava/lang/String;
    const-string v8, "^Package:\\s+(.*)"

    .line 86
    .local v8, PKG_REGEX:Ljava/lang/String;
    const-string v3, "^Process:\\s+(.*)"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v16

    .line 87
    .local v16, procMatcher:Ljava/util/regex/Pattern;
    const-string v3, "^Package:\\s+(.*)"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v15

    .line 90
    .local v15, pkgMatcher:Ljava/util/regex/Pattern;
    move-object/from16 v10, v18

    .local v10, arr$:[Ljava/lang/String;
    array-length v13, v10

    .local v13, len$:I
    const/4 v12, 0x0

    .local v12, i$:I
    :goto_0
    if-ge v12, v13, :cond_2

    aget-object v17, v10, v12

    .line 91
    .local v17, s:Ljava/lang/String;
    invoke-virtual/range {v16 .. v17}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    .line 92
    .local v14, m:Ljava/util/regex/Matcher;
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v14, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 93
    :cond_0
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    .line 94
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v14, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 90
    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 97
    .end local v14           #m:Ljava/util/regex/Matcher;
    .end local v17           #s:Ljava/lang/String;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Backtrace of all threads:\n\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/mediatek/exceptionlog/ExceptionLog;->getAllThreadStackTraces()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 98
    const-string v3, ""

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 99
    invoke-static/range {p3 .. p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    :cond_3
    move-object/from16 v3, p2

    move-object/from16 v5, p1

    .line 101
    invoke-static/range {v1 .. v7}, Lcom/mediatek/exceptionlog/ExceptionLog;->report(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 102
    return-void
.end method

.method public systemreport(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "Type"
    .parameter "Module"
    .parameter "Msg"
    .parameter "Path"

    .prologue
    .line 105
    invoke-static {}, Lcom/mediatek/exceptionlog/ExceptionLog;->getThreadStackTrace()Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, Backtrace:Ljava/lang/String;
    invoke-static {p1, p2, v0, p3, p4}, Lcom/mediatek/exceptionlog/ExceptionLog;->systemreportImpl(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return-void
.end method
