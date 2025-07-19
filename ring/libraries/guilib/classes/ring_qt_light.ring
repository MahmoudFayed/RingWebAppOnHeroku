
load "codegenlib.ring"

Class QObject

	pObject

	Func init 
		pObject = QObject_new()
		return self

	Func delete
		pObject = QObject_delete(pObject)

	Func ObjectPointer
		return pObject

	Func blockSignals P1
		return QObject_blockSignals(pObject,P1)

	Func children 
		return QObject_children(pObject)

	Func dumpObjectInfo 
		return QObject_dumpObjectInfo(pObject)

	Func dumpObjectTree 
		return QObject_dumpObjectTree(pObject)

	Func inherits P1
		return QObject_inherits(pObject,P1)

	Func installEventFilter P1
		return QObject_installEventFilter(pObject,GetObjectPointerFromRingObject(P1))

	Func isWidgetType 
		return QObject_isWidgetType(pObject)

	Func killTimer P1
		return QObject_killTimer(pObject,P1)

	Func moveToThread P1
		return QObject_moveToThread(pObject,GetObjectPointerFromRingObject(P1))

	Func objectName 
		return QObject_objectName(pObject)

	Func parent 
		pTempObj = new QObject
		pTempObj.pObject = QObject_parent(pObject)
		return pTempObj

	Func property P1
		pTempObj = new QVariant
		pTempObj.pObject = QObject_property(pObject,P1)
		return pTempObj

	Func removeEventFilter P1
		return QObject_removeEventFilter(pObject,GetObjectPointerFromRingObject(P1))

	Func setObjectName P1
		return QObject_setObjectName(pObject,P1)

	Func setParent P1
		return QObject_setParent(pObject,GetObjectPointerFromRingObject(P1))

	Func setProperty P1,P2
		return QObject_setProperty(pObject,P1,GetObjectPointerFromRingObject(P2))

	Func setProperty_2 P1,P2
		return QObject_setProperty_2(pObject,P1,P2)

	Func setProperty_3 P1,P2
		return QObject_setProperty_3(pObject,P1,P2)

	Func setProperty_4 P1,P2
		return QObject_setProperty_4(pObject,P1,P2)

	Func setProperty_5 P1,P2
		return QObject_setProperty_5(pObject,P1,P2)

	Func setProperty_int P1,P2
		return QObject_setProperty_int(pObject,P1,P2)

	Func setProperty_float P1,P2
		return QObject_setProperty_float(pObject,P1,P2)

	Func setProperty_double P1,P2
		return QObject_setProperty_double(pObject,P1,P2)

	Func setProperty_string P1,P2
		return QObject_setProperty_string(pObject,P1,P2)

	Func signalsBlocked 
		return QObject_signalsBlocked(pObject)

	Func startTimer P1
		return QObject_startTimer(pObject,P1)

	Func thread 
		pTempObj = new QThread
		pTempObj.pObject = QObject_thread(pObject)
		return pTempObj

	Func deleteLater 
		return QObject_deleteLater(pObject)

Class QDir

	pObject

	Func init 
		pObject = QDir_new()
		return self

	Func delete
		pObject = QDir_delete(pObject)

	Func ObjectPointer
		return pObject

	Func absoluteFilePath P1
		return QDir_absoluteFilePath(pObject,P1)

	Func absolutePath 
		return QDir_absolutePath(pObject)

	Func canonicalPath 
		return QDir_canonicalPath(pObject)

	Func cd P1
		return QDir_cd(pObject,P1)

	Func cdUp 
		return QDir_cdUp(pObject)

	Func count 
		return QDir_count(pObject)

	Func dirName 
		return QDir_dirName(pObject)

	Func entryInfoList P1,P2,P3
		return QDir_entryInfoList(pObject,GetObjectPointerFromRingObject(P1),P2,P3)

	Func entryInfoList_2 P1,P2
		return QDir_entryInfoList_2(pObject,P1,P2)

	Func entryList P1,P2,P3
		pTempObj = new QStringList
		pTempObj.pObject = QDir_entryList(pObject,GetObjectPointerFromRingObject(P1),P2,P3)
		return pTempObj

	Func entryList_2 P1,P2
		pTempObj = new QStringList
		pTempObj.pObject = QDir_entryList_2(pObject,P1,P2)
		return pTempObj

	Func exists P1
		return QDir_exists(pObject,P1)

	Func exists_2 
		return QDir_exists_2(pObject)

	Func filePath P1
		return QDir_filePath(pObject,P1)

	Func filter 
		return QDir_filter(pObject)

	Func isAbsolute 
		return QDir_isAbsolute(pObject)

	Func isReadable 
		return QDir_isReadable(pObject)

	Func isRelative 
		return QDir_isRelative(pObject)

	Func isRoot 
		return QDir_isRoot(pObject)

	Func makeAbsolute 
		return QDir_makeAbsolute(pObject)

	Func mkdir P1
		return QDir_mkdir(pObject,P1)

	Func mkpath P1
		return QDir_mkpath(pObject,P1)

	Func nameFilters 
		pTempObj = new QStringList
		pTempObj.pObject = QDir_nameFilters(pObject)
		return pTempObj

	Func path 
		return QDir_path(pObject)

	Func refresh 
		return QDir_refresh(pObject)

	Func relativeFilePath P1
		return QDir_relativeFilePath(pObject,P1)

	Func remove P1
		return QDir_remove(pObject,P1)

	Func removeRecursively 
		return QDir_removeRecursively(pObject)

	Func rename P1,P2
		return QDir_rename(pObject,P1,P2)

	Func rmdir P1
		return QDir_rmdir(pObject,P1)

	Func rmpath P1
		return QDir_rmpath(pObject,P1)

	Func setFilter P1
		return QDir_setFilter(pObject,P1)

	Func setNameFilters P1
		return QDir_setNameFilters(pObject,GetObjectPointerFromRingObject(P1))

	Func setPath P1
		return QDir_setPath(pObject,P1)

	Func setSorting P1
		return QDir_setSorting(pObject,P1)

	Func sorting 
		return QDir_sorting(pObject)

	Func swap P1
		return QDir_swap(pObject,GetObjectPointerFromRingObject(P1))

	Func addSearchPath P1,P2
		return QDir_addSearchPath(pObject,P1,P2)

	Func cleanPath P1
		return QDir_cleanPath(pObject,P1)

	Func current 
		pTempObj = new QDir
		pTempObj.pObject = QDir_current(pObject)
		return pTempObj

	Func currentPath 
		return QDir_currentPath(pObject)

	Func drives 
		return QDir_drives(pObject)

	Func fromNativeSeparators P1
		return QDir_fromNativeSeparators(pObject,P1)

	Func home 
		pTempObj = new QDir
		pTempObj.pObject = QDir_home(pObject)
		return pTempObj

	Func homePath 
		return QDir_homePath(pObject)

	Func isAbsolutePath P1
		return QDir_isAbsolutePath(pObject,P1)

	Func isRelativePath P1
		return QDir_isRelativePath(pObject,P1)

	Func match P1,P2
		return QDir_match(pObject,P1,P2)

	Func match_2 P1,P2
		return QDir_match_2(pObject,GetObjectPointerFromRingObject(P1),P2)

	Func root 
		pTempObj = new QDir
		pTempObj.pObject = QDir_root(pObject)
		return pTempObj

	Func rootPath 
		return QDir_rootPath(pObject)

	Func searchPaths P1
		pTempObj = new QStringList
		pTempObj.pObject = QDir_searchPaths(pObject,P1)
		return pTempObj

	Func separator 
		pTempObj = new QChar
		pTempObj.pObject = QDir_separator(pObject)
		return pTempObj

	Func setCurrent P1
		return QDir_setCurrent(pObject,P1)

	Func setSearchPaths P1,P2
		return QDir_setSearchPaths(pObject,P1,GetObjectPointerFromRingObject(P2))

	Func temp 
		pTempObj = new QDir
		pTempObj.pObject = QDir_temp(pObject)
		return pTempObj

	Func tempPath 
		return QDir_tempPath(pObject)

	Func toNativeSeparators P1
		return QDir_toNativeSeparators(pObject,P1)

Class QUrl

	pObject

	Func init P1
		pObject = QUrl_new(P1)
		return self

	Func delete
		pObject = QUrl_delete(pObject)

	Func ObjectPointer
		return pObject

	Func authority P1
		return QUrl_authority(pObject,P1)

	Func clear 
		return QUrl_clear(pObject)

	Func errorString 
		return QUrl_errorString(pObject)

	Func fileName P1
		return QUrl_fileName(pObject,P1)

	Func fragment P1
		return QUrl_fragment(pObject,P1)

	Func hasFragment 
		return QUrl_hasFragment(pObject)

	Func hasQuery 
		return QUrl_hasQuery(pObject)

	Func host P1
		return QUrl_host(pObject,P1)

	Func isEmpty 
		return QUrl_isEmpty(pObject)

	Func isLocalFile 
		return QUrl_isLocalFile(pObject)

	Func isParentOf P1
		return QUrl_isParentOf(pObject,GetObjectPointerFromRingObject(P1))

	Func isRelative 
		return QUrl_isRelative(pObject)

	Func isValid 
		return QUrl_isValid(pObject)

	Func password P1
		return QUrl_password(pObject,P1)

	Func path P1
		return QUrl_path(pObject,P1)

	Func port P1
		return QUrl_port(pObject,P1)

	Func query P1
		return QUrl_query(pObject,P1)

	Func resolved P1
		pTempObj = new QUrl
		pTempObj.pObject = QUrl_resolved(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func scheme 
		return QUrl_scheme(pObject)

	Func setAuthority P1,P2
		return QUrl_setAuthority(pObject,P1,P2)

	Func setFragment P1,P2
		return QUrl_setFragment(pObject,P1,P2)

	Func setHost P1,P2
		return QUrl_setHost(pObject,P1,P2)

	Func setPassword P1,P2
		return QUrl_setPassword(pObject,P1,P2)

	Func setPath P1,P2
		return QUrl_setPath(pObject,P1,P2)

	Func setPort P1
		return QUrl_setPort(pObject,P1)

	Func setQuery P1,P2
		return QUrl_setQuery(pObject,P1,P2)

	Func setScheme P1
		return QUrl_setScheme(pObject,P1)

	Func setUrl P1,P2
		return QUrl_setUrl(pObject,P1,P2)

	Func setUserInfo P1,P2
		return QUrl_setUserInfo(pObject,P1,P2)

	Func setUserName P1,P2
		return QUrl_setUserName(pObject,P1,P2)

	Func swap P1
		return QUrl_swap(pObject,GetObjectPointerFromRingObject(P1))

	Func toLocalFile 
		return QUrl_toLocalFile(pObject)

	Func userInfo P1
		return QUrl_userInfo(pObject,P1)

	Func userName P1
		return QUrl_userName(pObject,P1)

	Func fromLocalFile P1
		pTempObj = new QUrl
		pTempObj.pObject = QUrl_fromLocalFile(pObject,P1)
		return pTempObj

Class QEvent

	pObject

	Func init P1
		pObject = QEvent_new(P1)
		return self

	Func delete
		pObject = QEvent_delete(pObject)

	Func ObjectPointer
		return pObject

	Func accept 
		return QEvent_accept(pObject)

	Func ignore 
		return QEvent_ignore(pObject)

	Func isAccepted 
		return QEvent_isAccepted(pObject)

	Func setAccepted P1
		return QEvent_setAccepted(pObject,P1)

	Func spontaneous 
		return QEvent_spontaneous(pObject)

	Func type 
		return QEvent_type(pObject)

Class QTimer

	pObject

	Func init P1
		pObject = QTimer_new(GetObjectPointerFromRingObject(P1))
		return self

	Func delete
		pObject = QTimer_delete(pObject)

	Func ObjectPointer
		return pObject

	Func interval 
		return QTimer_interval(pObject)

	Func isActive 
		return QTimer_isActive(pObject)

	Func isSingleShot 
		return QTimer_isSingleShot(pObject)

	Func setInterval P1
		return QTimer_setInterval(pObject,P1)

	Func setSingleShot P1
		return QTimer_setSingleShot(pObject,P1)

	Func timerId 
		return QTimer_timerId(pObject)

	Func start 
		return QTimer_start(pObject)

	Func stop 
		return QTimer_stop(pObject)

	Func settimeoutEvent P1
		return QTimer_settimeoutEvent(pObject,P1)

	Func gettimeoutEvent 
		return QTimer_gettimeoutEvent(pObject)

Class QByteArray

	pObject

	Func init 
		pObject = QByteArray_new()
		return self

	Func delete
		pObject = QByteArray_delete(pObject)

	Func ObjectPointer
		return pObject

	Func append P1
		pTempObj = new QByteArray
		pTempObj.pObject = QByteArray_append(pObject,P1)
		return pTempObj

	Func append_2 P1,P2
		pTempObj = new QByteArray
		pTempObj.pObject = QByteArray_append_2(pObject,P1,P2)
		return pTempObj

	Func at P1
		return QByteArray_at(pObject,P1)

	Func capacity 
		return QByteArray_capacity(pObject)

	Func chop P1
		return QByteArray_chop(pObject,P1)

	Func clear 
		return QByteArray_clear(pObject)

	Func constData 
		return QByteArray_constData(pObject)

	Func contains P1
		return QByteArray_contains(pObject,P1)

	Func count P1
		return QByteArray_count(pObject,P1)

	Func data 
		return QByteArray_data(pObject)

	Func endsWith P1
		return QByteArray_endsWith(pObject,P1)

	Func fill P1,P2
		pTempObj = new QByteArray
		pTempObj.pObject = QByteArray_fill(pObject,P1,P2)
		return pTempObj

	Func indexOf P1,P2
		return QByteArray_indexOf(pObject,P1,P2)

	Func insert P1,P2,P3
		pTempObj = new QByteArray
		pTempObj.pObject = QByteArray_insert(pObject,P1,P2,P3)
		return pTempObj

	Func isEmpty 
		return QByteArray_isEmpty(pObject)

	Func isNull 
		return QByteArray_isNull(pObject)

	Func lastIndexOf P1,P2
		return QByteArray_lastIndexOf(pObject,P1,P2)

	Func left P1
		pTempObj = new QByteArray
		pTempObj.pObject = QByteArray_left(pObject,P1)
		return pTempObj

	Func leftJustified P1,P2,P3
		pTempObj = new QByteArray
		pTempObj.pObject = QByteArray_leftJustified(pObject,P1,P2,P3)
		return pTempObj

	Func length 
		return QByteArray_length(pObject)

	Func mid P1,P2
		pTempObj = new QByteArray
		pTempObj.pObject = QByteArray_mid(pObject,P1,P2)
		return pTempObj

	Func prepend P1,P2
		pTempObj = new QByteArray
		pTempObj.pObject = QByteArray_prepend(pObject,P1,P2)
		return pTempObj

	Func push_back P1
		return QByteArray_push_back(pObject,P1)

	Func push_front P1
		return QByteArray_push_front(pObject,P1)

	Func remove P1,P2
		pTempObj = new QByteArray
		pTempObj.pObject = QByteArray_remove(pObject,P1,P2)
		return pTempObj

	Func repeated P1
		pTempObj = new QByteArray
		pTempObj.pObject = QByteArray_repeated(pObject,P1)
		return pTempObj

	Func replace P1,P2,P3,P4
		pTempObj = new QByteArray
		pTempObj.pObject = QByteArray_replace(pObject,P1,P2,P3,P4)
		return pTempObj

	Func replace_2 P1,P2,P3
		pTempObj = new QByteArray
		pTempObj.pObject = QByteArray_replace_2(pObject,P1,P2,GetObjectPointerFromRingObject(P3))
		return pTempObj

	Func replace_3 P1,P2,P3
		pTempObj = new QByteArray
		pTempObj.pObject = QByteArray_replace_3(pObject,P1,P2,P3)
		return pTempObj

	Func replace_4 P1,P2
		pTempObj = new QByteArray
		pTempObj.pObject = QByteArray_replace_4(pObject,P1,P2)
		return pTempObj

	Func replace_5 P1,P2
		pTempObj = new QByteArray
		pTempObj.pObject = QByteArray_replace_5(pObject,P1,GetObjectPointerFromRingObject(P2))
		return pTempObj

	Func replace_6 P1,P2
		pTempObj = new QByteArray
		pTempObj.pObject = QByteArray_replace_6(pObject,P1,P2)
		return pTempObj

	Func replace_7 P1,P2,P3,P4
		pTempObj = new QByteArray
		pTempObj.pObject = QByteArray_replace_7(pObject,P1,P2,P3,P4)
		return pTempObj

	Func replace_8 P1,P2
		pTempObj = new QByteArray
		pTempObj.pObject = QByteArray_replace_8(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2))
		return pTempObj

	Func replace_9 P1,P2
		pTempObj = new QByteArray
		pTempObj.pObject = QByteArray_replace_9(pObject,GetObjectPointerFromRingObject(P1),P2)
		return pTempObj

	Func replace_10 P1,P2
		pTempObj = new QByteArray
		pTempObj.pObject = QByteArray_replace_10(pObject,P1,GetObjectPointerFromRingObject(P2))
		return pTempObj

	Func replace_11 P1,P2
		pTempObj = new QByteArray
		pTempObj.pObject = QByteArray_replace_11(pObject,P1,P2)
		return pTempObj

	Func reserve P1
		return QByteArray_reserve(pObject,P1)

	Func resize P1
		return QByteArray_resize(pObject,P1)

	Func right P1
		pTempObj = new QByteArray
		pTempObj.pObject = QByteArray_right(pObject,P1)
		return pTempObj

	Func rightJustified P1,P2,P3
		pTempObj = new QByteArray
		pTempObj.pObject = QByteArray_rightJustified(pObject,P1,P2,P3)
		return pTempObj

	Func setNum P1,P2
		pTempObj = new QByteArray
		pTempObj.pObject = QByteArray_setNum(pObject,P1,P2)
		return pTempObj

	Func setRawData P1,P2
		pTempObj = new QByteArray
		pTempObj.pObject = QByteArray_setRawData(pObject,P1,P2)
		return pTempObj

	Func simplified 
		pTempObj = new QByteArray
		pTempObj.pObject = QByteArray_simplified(pObject)
		return pTempObj

	Func size 
		return QByteArray_size(pObject)

	Func squeeze 
		return QByteArray_squeeze(pObject)

	Func startsWith P1
		return QByteArray_startsWith(pObject,P1)

	Func swap P1
		return QByteArray_swap(pObject,GetObjectPointerFromRingObject(P1))

	Func toBase64 
		pTempObj = new QByteArray
		pTempObj.pObject = QByteArray_toBase64(pObject)
		return pTempObj

	Func toDouble P1
		return QByteArray_toDouble(pObject,GetObjectPointerFromRingObject(P1))

	Func toFloat P1
		return QByteArray_toFloat(pObject,GetObjectPointerFromRingObject(P1))

	Func toHex 
		pTempObj = new QByteArray
		pTempObj.pObject = QByteArray_toHex(pObject)
		return pTempObj

	Func toInt P1,P2
		return QByteArray_toInt(pObject,GetObjectPointerFromRingObject(P1),P2)

	Func toLong P1,P2
		return QByteArray_toLong(pObject,GetObjectPointerFromRingObject(P1),P2)

	Func toLongLong P1,P2
		return QByteArray_toLongLong(pObject,GetObjectPointerFromRingObject(P1),P2)

	Func toLower 
		pTempObj = new QByteArray
		pTempObj.pObject = QByteArray_toLower(pObject)
		return pTempObj

	Func toPercentEncoding P1,P2,P3
		pTempObj = new QByteArray
		pTempObj.pObject = QByteArray_toPercentEncoding(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2),P3)
		return pTempObj

	Func toShort P1,P2
		return QByteArray_toShort(pObject,GetObjectPointerFromRingObject(P1),P2)

	Func toUInt P1,P2
		return QByteArray_toUInt(pObject,GetObjectPointerFromRingObject(P1),P2)

	Func toULong P1,P2
		return QByteArray_toULong(pObject,GetObjectPointerFromRingObject(P1),P2)

	Func toULongLong P1,P2
		return QByteArray_toULongLong(pObject,GetObjectPointerFromRingObject(P1),P2)

	Func toUShort P1,P2
		return QByteArray_toUShort(pObject,GetObjectPointerFromRingObject(P1),P2)

	Func toUpper 
		pTempObj = new QByteArray
		pTempObj.pObject = QByteArray_toUpper(pObject)
		return pTempObj

	Func trimmed 
		pTempObj = new QByteArray
		pTempObj.pObject = QByteArray_trimmed(pObject)
		return pTempObj

	Func truncate P1
		return QByteArray_truncate(pObject,P1)

	Func fromBase64 P1
		pTempObj = new QByteArray
		pTempObj.pObject = QByteArray_fromBase64(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func fromHex P1
		pTempObj = new QByteArray
		pTempObj.pObject = QByteArray_fromHex(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func fromPercentEncoding P1,P2
		pTempObj = new QByteArray
		pTempObj.pObject = QByteArray_fromPercentEncoding(pObject,GetObjectPointerFromRingObject(P1),P2)
		return pTempObj

	Func fromRawData P1,P2
		pTempObj = new QByteArray
		pTempObj.pObject = QByteArray_fromRawData(pObject,P1,P2)
		return pTempObj

	Func number P1,P2
		pTempObj = new QByteArray
		pTempObj.pObject = QByteArray_number(pObject,P1,P2)
		return pTempObj

Class QIODevice from QObject

	pObject

	Func init 
		pObject = QIODevice_new()
		return self

	Func delete
		pObject = QIODevice_delete(pObject)

	Func ObjectPointer
		return pObject

	Func errorString 
		return QIODevice_errorString(pObject)

	Func getChar P1
		return QIODevice_getChar(pObject,P1)

	Func isOpen 
		return QIODevice_isOpen(pObject)

	Func isReadable 
		return QIODevice_isReadable(pObject)

	Func isTextModeEnabled 
		return QIODevice_isTextModeEnabled(pObject)

	Func isWritable 
		return QIODevice_isWritable(pObject)

	Func openMode 
		return QIODevice_openMode(pObject)

	Func peek P1,P2
		return QIODevice_peek(pObject,P1,P2)

	Func putChar P1
		return QIODevice_putChar(pObject,P1)

	Func read P1,P2
		return QIODevice_read(pObject,P1,P2)

	Func readAll 
		pTempObj = new QByteArray
		pTempObj.pObject = QIODevice_readAll(pObject)
		return pTempObj

	Func readLine P1,P2
		return QIODevice_readLine(pObject,P1,P2)

	Func setTextModeEnabled P1
		return QIODevice_setTextModeEnabled(pObject,P1)

	Func ungetChar P1
		return QIODevice_ungetChar(pObject,P1)

	Func write P1,P2
		return QIODevice_write(pObject,P1,P2)

	Func atEnd 
		return QIODevice_atEnd(pObject)

	Func canReadLine 
		return QIODevice_canReadLine(pObject)

	Func close 
		return QIODevice_close(pObject)

	Func open P1
		return QIODevice_open(pObject,P1)

	Func pos 
		return QIODevice_pos(pObject)

	Func seek P1
		return QIODevice_seek(pObject,P1)

	Func size 
		return QIODevice_size(pObject)

	Func setaboutToCloseEvent P1
		return QIODevice_setaboutToCloseEvent(pObject,P1)

	Func setbytesWrittenEvent P1
		return QIODevice_setbytesWrittenEvent(pObject,P1)

	Func setreadChannelFinishedEvent P1
		return QIODevice_setreadChannelFinishedEvent(pObject,P1)

	Func setreadyReadEvent P1
		return QIODevice_setreadyReadEvent(pObject,P1)

	Func getaboutToCloseEvent 
		return QIODevice_getaboutToCloseEvent(pObject)

	Func getbytesWrittenEvent 
		return QIODevice_getbytesWrittenEvent(pObject)

	Func getreadChannelFinishedEvent 
		return QIODevice_getreadChannelFinishedEvent(pObject)

	Func getreadyReadEvent 
		return QIODevice_getreadyReadEvent(pObject)

Class QFileInfo

	pObject

	Func init 
		pObject = QFileInfo_new()
		return self

	Func delete
		pObject = QFileInfo_delete(pObject)

	Func ObjectPointer
		return pObject

	Func absoluteDir 
		pTempObj = new QDir
		pTempObj.pObject = QFileInfo_absoluteDir(pObject)
		return pTempObj

	Func absoluteFilePath 
		return QFileInfo_absoluteFilePath(pObject)

	Func absolutePath 
		return QFileInfo_absolutePath(pObject)

	Func baseName 
		return QFileInfo_baseName(pObject)

	Func bundleName 
		return QFileInfo_bundleName(pObject)

	Func caching 
		return QFileInfo_caching(pObject)

	Func canonicalFilePath 
		return QFileInfo_canonicalFilePath(pObject)

	Func canonicalPath 
		return QFileInfo_canonicalPath(pObject)

	Func completeBaseName 
		return QFileInfo_completeBaseName(pObject)

	Func completeSuffix 
		return QFileInfo_completeSuffix(pObject)

	Func dir 
		pTempObj = new QDir
		pTempObj.pObject = QFileInfo_dir(pObject)
		return pTempObj

	Func exists 
		return QFileInfo_exists(pObject)

	Func fileName 
		return QFileInfo_fileName(pObject)

	Func filePath 
		return QFileInfo_filePath(pObject)

	Func group 
		return QFileInfo_group(pObject)

	Func groupId 
		return QFileInfo_groupId(pObject)

	Func isAbsolute 
		return QFileInfo_isAbsolute(pObject)

	Func isBundle 
		return QFileInfo_isBundle(pObject)

	Func isDir 
		return QFileInfo_isDir(pObject)

	Func isExecutable 
		return QFileInfo_isExecutable(pObject)

	Func isFile 
		return QFileInfo_isFile(pObject)

	Func isHidden 
		return QFileInfo_isHidden(pObject)

	Func isNativePath 
		return QFileInfo_isNativePath(pObject)

	Func isReadable 
		return QFileInfo_isReadable(pObject)

	Func isRelative 
		return QFileInfo_isRelative(pObject)

	Func isRoot 
		return QFileInfo_isRoot(pObject)

	Func isSymLink 
		return QFileInfo_isSymLink(pObject)

	Func isWritable 
		return QFileInfo_isWritable(pObject)

	Func lastModified 
		pTempObj = new QDateTime
		pTempObj.pObject = QFileInfo_lastModified(pObject)
		return pTempObj

	Func lastRead 
		pTempObj = new QDateTime
		pTempObj.pObject = QFileInfo_lastRead(pObject)
		return pTempObj

	Func makeAbsolute 
		return QFileInfo_makeAbsolute(pObject)

	Func owner 
		return QFileInfo_owner(pObject)

	Func ownerId 
		return QFileInfo_ownerId(pObject)

	Func path 
		return QFileInfo_path(pObject)

	Func permission P1
		return QFileInfo_permission(pObject,P1)

	Func permissions 
		return QFileInfo_permissions(pObject)

	Func refresh 
		return QFileInfo_refresh(pObject)

	Func setCaching P1
		return QFileInfo_setCaching(pObject,P1)

	Func setFile P1
		return QFileInfo_setFile(pObject,P1)

	Func size 
		return QFileInfo_size(pObject)

	Func suffix 
		return QFileInfo_suffix(pObject)

	Func swap P1
		return QFileInfo_swap(pObject,GetObjectPointerFromRingObject(P1))

	Func symLinkTarget 
		return QFileInfo_symLinkTarget(pObject)

Class QStringList

	pObject

	Func init 
		pObject = QStringList_new()
		return self

	Func delete
		pObject = QStringList_delete(pObject)

	Func ObjectPointer
		return pObject

	Func join P1
		return QStringList_join(pObject,P1)

	Func sort 
		return QStringList_sort(pObject)

	Func removeDuplicates 
		return QStringList_removeDuplicates(pObject)

	Func filter P1,P2
		pTempObj = new QStringList
		pTempObj.pObject = QStringList_filter(pObject,P1,P2)
		return pTempObj

	Func replaceInStrings P1,P2,P3
		pTempObj = new QStringList
		pTempObj.pObject = QStringList_replaceInStrings(pObject,P1,P2,P3)
		return pTempObj

	Func append P1
		return QStringList_append(pObject,P1)

	Func at P1
		return QStringList_at(pObject,P1)

	Func back 
		return QStringList_back(pObject)

	Func clear 
		return QStringList_clear(pObject)

	Func contains P1
		return QStringList_contains(pObject,P1)

	Func count 
		return QStringList_count(pObject)

	Func empty 
		return QStringList_empty(pObject)

	Func endsWith P1
		return QStringList_endsWith(pObject,P1)

	Func first 
		return QStringList_first(pObject)

	Func front 
		return QStringList_front(pObject)

	Func indexOf P1,P2
		return QStringList_indexOf(pObject,P1,P2)

	Func insert P1,P2
		return QStringList_insert(pObject,P1,P2)

	Func isEmpty 
		return QStringList_isEmpty(pObject)

	Func last 
		return QStringList_last(pObject)

	Func lastIndexOf P1,P2
		return QStringList_lastIndexOf(pObject,P1,P2)

	Func length 
		return QStringList_length(pObject)

	Func move P1,P2
		return QStringList_move(pObject,P1,P2)

	Func pop_back 
		return QStringList_pop_back(pObject)

	Func pop_front 
		return QStringList_pop_front(pObject)

	Func prepend P1
		return QStringList_prepend(pObject,P1)

	Func push_back P1
		return QStringList_push_back(pObject,P1)

	Func push_front P1
		return QStringList_push_front(pObject,P1)

	Func removeAll P1
		return QStringList_removeAll(pObject,P1)

	Func removeAt P1
		return QStringList_removeAt(pObject,P1)

	Func removeFirst 
		return QStringList_removeFirst(pObject)

	Func removeLast 
		return QStringList_removeLast(pObject)

	Func removeOne P1
		return QStringList_removeOne(pObject,P1)

	Func replace P1,P2
		return QStringList_replace(pObject,P1,P2)

	Func reserve P1
		return QStringList_reserve(pObject,P1)

	Func size 
		return QStringList_size(pObject)

	Func startsWith P1
		return QStringList_startsWith(pObject,P1)

	Func takeAt P1
		return QStringList_takeAt(pObject,P1)

	Func takeFirst 
		return QStringList_takeFirst(pObject)

	Func takeLast 
		return QStringList_takeLast(pObject)

	Func value P1
		return QStringList_value(pObject,P1)

Class QRect

	pObject

	Func init 
		pObject = QRect_new()
		return self

	Func delete
		pObject = QRect_delete(pObject)

	Func ObjectPointer
		return pObject

	Func adjust P1,P2,P3,P4
		return QRect_adjust(pObject,P1,P2,P3,P4)

	Func adjusted P1,P2,P3,P4
		pTempObj = new QRect
		pTempObj.pObject = QRect_adjusted(pObject,P1,P2,P3,P4)
		return pTempObj

	Func bottom 
		return QRect_bottom(pObject)

	Func bottomLeft 
		pTempObj = new QPoint
		pTempObj.pObject = QRect_bottomLeft(pObject)
		return pTempObj

	Func bottomRight 
		pTempObj = new QPoint
		pTempObj.pObject = QRect_bottomRight(pObject)
		return pTempObj

	Func center 
		pTempObj = new QPoint
		pTempObj.pObject = QRect_center(pObject)
		return pTempObj

	Func contains P1,P2,P3
		return QRect_contains(pObject,P1,P2,P3)

	Func getCoords P1,P2,P3,P4
		return QRect_getCoords(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2),GetObjectPointerFromRingObject(P3),GetObjectPointerFromRingObject(P4))

	Func getRect P1,P2,P3,P4
		return QRect_getRect(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2),GetObjectPointerFromRingObject(P3),GetObjectPointerFromRingObject(P4))

	Func height 
		return QRect_height(pObject)

	Func intersected P1
		pTempObj = new QRect
		pTempObj.pObject = QRect_intersected(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func intersects P1
		return QRect_intersects(pObject,GetObjectPointerFromRingObject(P1))

	Func isEmpty 
		return QRect_isEmpty(pObject)

	Func isNull 
		return QRect_isNull(pObject)

	Func isValid 
		return QRect_isValid(pObject)

	Func left 
		return QRect_left(pObject)

	Func moveBottom P1
		return QRect_moveBottom(pObject,P1)

	Func moveBottomLeft P1
		return QRect_moveBottomLeft(pObject,GetObjectPointerFromRingObject(P1))

	Func moveBottomRight P1
		return QRect_moveBottomRight(pObject,GetObjectPointerFromRingObject(P1))

	Func moveCenter P1
		return QRect_moveCenter(pObject,GetObjectPointerFromRingObject(P1))

	Func moveLeft P1
		return QRect_moveLeft(pObject,P1)

	Func moveRight P1
		return QRect_moveRight(pObject,P1)

	Func moveTo P1,P2
		return QRect_moveTo(pObject,P1,P2)

	Func moveTop P1
		return QRect_moveTop(pObject,P1)

	Func moveTopLeft P1
		return QRect_moveTopLeft(pObject,GetObjectPointerFromRingObject(P1))

	Func moveTopRight P1
		return QRect_moveTopRight(pObject,GetObjectPointerFromRingObject(P1))

	Func normalized 
		pTempObj = new QRect
		pTempObj.pObject = QRect_normalized(pObject)
		return pTempObj

	Func right 
		return QRect_right(pObject)

	Func setBottom P1
		return QRect_setBottom(pObject,P1)

	Func setBottomLeft P1
		return QRect_setBottomLeft(pObject,GetObjectPointerFromRingObject(P1))

	Func setBottomRight P1
		return QRect_setBottomRight(pObject,GetObjectPointerFromRingObject(P1))

	Func setCoords P1,P2,P3,P4
		return QRect_setCoords(pObject,P1,P2,P3,P4)

	Func setHeight P1
		return QRect_setHeight(pObject,P1)

	Func setLeft P1
		return QRect_setLeft(pObject,P1)

	Func setRect P1,P2,P3,P4
		return QRect_setRect(pObject,P1,P2,P3,P4)

	Func setRight P1
		return QRect_setRight(pObject,P1)

	Func setSize P1
		return QRect_setSize(pObject,GetObjectPointerFromRingObject(P1))

	Func setTop P1
		return QRect_setTop(pObject,P1)

	Func setTopLeft P1
		return QRect_setTopLeft(pObject,GetObjectPointerFromRingObject(P1))

	Func setTopRight P1
		return QRect_setTopRight(pObject,GetObjectPointerFromRingObject(P1))

	Func setWidth P1
		return QRect_setWidth(pObject,P1)

	Func setX P1
		return QRect_setX(pObject,P1)

	Func setY P1
		return QRect_setY(pObject,P1)

	Func size 
		pTempObj = new QSize
		pTempObj.pObject = QRect_size(pObject)
		return pTempObj

	Func top 
		return QRect_top(pObject)

	Func topLeft 
		pTempObj = new QPoint
		pTempObj.pObject = QRect_topLeft(pObject)
		return pTempObj

	Func topRight 
		pTempObj = new QPoint
		pTempObj.pObject = QRect_topRight(pObject)
		return pTempObj

	Func translate P1,P2
		return QRect_translate(pObject,P1,P2)

	Func translated P1,P2
		pTempObj = new QRect
		pTempObj.pObject = QRect_translated(pObject,P1,P2)
		return pTempObj

	Func united P1
		pTempObj = new QRect
		pTempObj.pObject = QRect_united(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func width 
		return QRect_width(pObject)

	Func x 
		return QRect_x(pObject)

	Func y 
		return QRect_y(pObject)

Class QTime

	pObject

	Func init 
		pObject = QTime_new()
		return self

	Func delete
		pObject = QTime_delete(pObject)

	Func ObjectPointer
		return pObject

	Func addMSecs P1
		pTempObj = new QTime
		pTempObj.pObject = QTime_addMSecs(pObject,P1)
		return pTempObj

	Func addSecs P1
		pTempObj = new QTime
		pTempObj.pObject = QTime_addSecs(pObject,P1)
		return pTempObj

	Func hour 
		return QTime_hour(pObject)

	Func isNull 
		return QTime_isNull(pObject)

	Func isValid 
		return QTime_isValid(pObject)

	Func minute 
		return QTime_minute(pObject)

	Func msec 
		return QTime_msec(pObject)

	Func msecsSinceStartOfDay 
		return QTime_msecsSinceStartOfDay(pObject)

	Func msecsTo P1
		return QTime_msecsTo(pObject,GetObjectPointerFromRingObject(P1))

	Func second 
		return QTime_second(pObject)

	Func secsTo P1
		return QTime_secsTo(pObject,GetObjectPointerFromRingObject(P1))

	Func setHMS P1,P2,P3,P4
		return QTime_setHMS(pObject,P1,P2,P3,P4)

	Func toString P1
		return QTime_toString(pObject,P1)

	Func currentTime 
		pTempObj = new QTime
		pTempObj.pObject = QTime_currentTime(pObject)
		return pTempObj

	Func fromMSecsSinceStartOfDay P1
		pTempObj = new QTime
		pTempObj.pObject = QTime_fromMSecsSinceStartOfDay(pObject,P1)
		return pTempObj

	Func fromString P1,P2
		pTempObj = new QTime
		pTempObj.pObject = QTime_fromString(pObject,P1,P2)
		return pTempObj

Class QDate

	pObject

	Func init 
		pObject = QDate_new()
		return self

	Func delete
		pObject = QDate_delete(pObject)

	Func ObjectPointer
		return pObject

	Func addDays P1
		pTempObj = new QDate
		pTempObj.pObject = QDate_addDays(pObject,P1)
		return pTempObj

	Func addMonths P1
		pTempObj = new QDate
		pTempObj.pObject = QDate_addMonths(pObject,P1)
		return pTempObj

	Func addYears P1
		pTempObj = new QDate
		pTempObj.pObject = QDate_addYears(pObject,P1)
		return pTempObj

	Func day 
		return QDate_day(pObject)

	Func dayOfWeek 
		return QDate_dayOfWeek(pObject)

	Func dayOfYear 
		return QDate_dayOfYear(pObject)

	Func daysInMonth 
		return QDate_daysInMonth(pObject)

	Func daysInYear 
		return QDate_daysInYear(pObject)

	Func daysTo P1
		return QDate_daysTo(pObject,GetObjectPointerFromRingObject(P1))

	Func getDate P1,P2,P3
		return QDate_getDate(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2),GetObjectPointerFromRingObject(P3))

	Func isNull 
		return QDate_isNull(pObject)

	Func isValid 
		return QDate_isValid(pObject)

	Func month 
		return QDate_month(pObject)

	Func setDate P1,P2,P3
		return QDate_setDate(pObject,P1,P2,P3)

	Func toJulianDay 
		return QDate_toJulianDay(pObject)

	Func toString P1
		return QDate_toString(pObject,P1)

	Func weekNumber P1
		return QDate_weekNumber(pObject,GetObjectPointerFromRingObject(P1))

	Func year 
		return QDate_year(pObject)

	Func currentDate 
		pTempObj = new QDate
		pTempObj.pObject = QDate_currentDate(pObject)
		return pTempObj

	Func fromJulianDay P1
		pTempObj = new QDate
		pTempObj.pObject = QDate_fromJulianDay(pObject,P1)
		return pTempObj

	Func fromString P1,P2
		pTempObj = new QDate
		pTempObj.pObject = QDate_fromString(pObject,P1,P2)
		return pTempObj

	Func isLeapYear P1
		return QDate_isLeapYear(pObject,P1)

Class QTextCodec

	pObject


	Func codecForName P1
		return QTextCodec_codecForName(P1)

	Func setCodecForLocale P1
		return QTextCodec_setCodecForLocale(GetObjectPointerFromRingObject(P1))

Class QVariant

	pObject

	Func init 
		pObject = QVariant_new()
		return self

	Func delete
		pObject = QVariant_delete(pObject)

	Func ObjectPointer
		return pObject

	Func canConvert P1
		return QVariant_canConvert(pObject,P1)

	Func clear 
		return QVariant_clear(pObject)

	Func convert P1
		return QVariant_convert(pObject,P1)

	Func isNull 
		return QVariant_isNull(pObject)

	Func isValid 
		return QVariant_isValid(pObject)

	Func swap P1
		return QVariant_swap(pObject,GetObjectPointerFromRingObject(P1))

	Func toBitArray 
		return QVariant_toBitArray(pObject)

	Func toBool 
		return QVariant_toBool(pObject)

	Func toByteArray 
		pTempObj = new QByteArray
		pTempObj.pObject = QVariant_toByteArray(pObject)
		return pTempObj

	Func toChar 
		pTempObj = new QChar
		pTempObj.pObject = QVariant_toChar(pObject)
		return pTempObj

	Func toDate 
		pTempObj = new QDate
		pTempObj.pObject = QVariant_toDate(pObject)
		return pTempObj

	Func toDateTime 
		pTempObj = new QDateTime
		pTempObj.pObject = QVariant_toDateTime(pObject)
		return pTempObj

	Func toDouble P1
		return QVariant_toDouble(pObject,GetObjectPointerFromRingObject(P1))

	Func toEasingCurve 
		return QVariant_toEasingCurve(pObject)

	Func toFloat P1
		return QVariant_toFloat(pObject,GetObjectPointerFromRingObject(P1))

	Func toInt P1
		return QVariant_toInt(pObject,GetObjectPointerFromRingObject(P1))

	Func toJsonArray 
		pTempObj = new QJsonArray
		pTempObj.pObject = QVariant_toJsonArray(pObject)
		return pTempObj

	Func toJsonDocument 
		pTempObj = new QJsonDocument
		pTempObj.pObject = QVariant_toJsonDocument(pObject)
		return pTempObj

	Func toJsonObject 
		pTempObj = new QJsonObject
		pTempObj.pObject = QVariant_toJsonObject(pObject)
		return pTempObj

	Func toJsonValue 
		pTempObj = new QJsonValue
		pTempObj.pObject = QVariant_toJsonValue(pObject)
		return pTempObj

	Func toLine 
		return QVariant_toLine(pObject)

	Func toLineF 
		pTempObj = new QLineF
		pTempObj.pObject = QVariant_toLineF(pObject)
		return pTempObj

	Func toLocale 
		pTempObj = new QLocale
		pTempObj.pObject = QVariant_toLocale(pObject)
		return pTempObj

	Func toLongLong P1
		return QVariant_toLongLong(pObject,GetObjectPointerFromRingObject(P1))

	Func toModelIndex 
		pTempObj = new QModelIndex
		pTempObj.pObject = QVariant_toModelIndex(pObject)
		return pTempObj

	Func toPoint 
		pTempObj = new QPoint
		pTempObj.pObject = QVariant_toPoint(pObject)
		return pTempObj

	Func toPointF 
		pTempObj = new QPointF
		pTempObj.pObject = QVariant_toPointF(pObject)
		return pTempObj

	Func toReal P1
		return QVariant_toReal(pObject,GetObjectPointerFromRingObject(P1))

	Func toRect 
		pTempObj = new QRect
		pTempObj.pObject = QVariant_toRect(pObject)
		return pTempObj

	Func toRectF 
		pTempObj = new QRectF
		pTempObj.pObject = QVariant_toRectF(pObject)
		return pTempObj

	Func toRegExp 
		pTempObj = new QRegExp
		pTempObj.pObject = QVariant_toRegExp(pObject)
		return pTempObj

	Func toRegularExpression 
		pTempObj = new QRegularExpression
		pTempObj.pObject = QVariant_toRegularExpression(pObject)
		return pTempObj

	Func toSize 
		pTempObj = new QSize
		pTempObj.pObject = QVariant_toSize(pObject)
		return pTempObj

	Func toSizeF 
		return QVariant_toSizeF(pObject)

	Func toStringList 
		pTempObj = new QStringList
		pTempObj.pObject = QVariant_toStringList(pObject)
		return pTempObj

	Func toTime 
		pTempObj = new QTime
		pTempObj.pObject = QVariant_toTime(pObject)
		return pTempObj

	Func toUInt P1
		return QVariant_toUInt(pObject,GetObjectPointerFromRingObject(P1))

	Func toULongLong P1
		return QVariant_toULongLong(pObject,GetObjectPointerFromRingObject(P1))

	Func toUrl 
		pTempObj = new QUrl
		pTempObj.pObject = QVariant_toUrl(pObject)
		return pTempObj

	Func toUuid 
		pTempObj = new QUuid
		pTempObj.pObject = QVariant_toUuid(pObject)
		return pTempObj

	Func type 
		return QVariant_type(pObject)

	Func typeName 
		return QVariant_typeName(pObject)

	Func userType 
		return QVariant_userType(pObject)

	Func toString 
		return QVariant_toString(pObject)

Class QXmlStreamReader

	pObject

	Func init 
		pObject = QXmlStreamReader_new()
		return self

	Func delete
		pObject = QXmlStreamReader_delete(pObject)

	Func ObjectPointer
		return pObject

	Func addData P1
		return QXmlStreamReader_addData(pObject,GetObjectPointerFromRingObject(P1))

	Func addData_2 P1
		return QXmlStreamReader_addData_2(pObject,P1)

	Func addData_3 P1
		return QXmlStreamReader_addData_3(pObject,P1)

	Func addExtraNamespaceDeclaration P1
		return QXmlStreamReader_addExtraNamespaceDeclaration(pObject,GetObjectPointerFromRingObject(P1))

	Func addExtraNamespaceDeclarations P1
		return QXmlStreamReader_addExtraNamespaceDeclarations(pObject,GetObjectPointerFromRingObject(P1))

	Func atEnd 
		return QXmlStreamReader_atEnd(pObject)

	Func attributes 
		pTempObj = new QXmlStreamAttributes
		pTempObj.pObject = QXmlStreamReader_attributes(pObject)
		return pTempObj

	Func characterOffset 
		return QXmlStreamReader_characterOffset(pObject)

	Func clear 
		return QXmlStreamReader_clear(pObject)

	Func columnNumber 
		return QXmlStreamReader_columnNumber(pObject)

	Func device 
		pTempObj = new QIODevice
		pTempObj.pObject = QXmlStreamReader_device(pObject)
		return pTempObj

	Func documentEncoding 
		pTempObj = new QStringRef
		pTempObj.pObject = QXmlStreamReader_documentEncoding(pObject)
		return pTempObj

	Func documentVersion 
		pTempObj = new QStringRef
		pTempObj.pObject = QXmlStreamReader_documentVersion(pObject)
		return pTempObj

	Func dtdName 
		pTempObj = new QStringRef
		pTempObj.pObject = QXmlStreamReader_dtdName(pObject)
		return pTempObj

	Func dtdPublicId 
		pTempObj = new QStringRef
		pTempObj.pObject = QXmlStreamReader_dtdPublicId(pObject)
		return pTempObj

	Func dtdSystemId 
		pTempObj = new QStringRef
		pTempObj.pObject = QXmlStreamReader_dtdSystemId(pObject)
		return pTempObj

	Func entityDeclarations 
		return QXmlStreamReader_entityDeclarations(pObject)

	Func entityResolver 
		pTempObj = new QXmlStreamEntityResolver
		pTempObj.pObject = QXmlStreamReader_entityResolver(pObject)
		return pTempObj

	Func error 
		return QXmlStreamReader_error(pObject)

	Func errorString 
		return QXmlStreamReader_errorString(pObject)

	Func hasError 
		return QXmlStreamReader_hasError(pObject)

	Func isCDATA 
		return QXmlStreamReader_isCDATA(pObject)

	Func isCharacters 
		return QXmlStreamReader_isCharacters(pObject)

	Func isComment 
		return QXmlStreamReader_isComment(pObject)

	Func isDTD 
		return QXmlStreamReader_isDTD(pObject)

	Func isEndDocument 
		return QXmlStreamReader_isEndDocument(pObject)

	Func isEndElement 
		return QXmlStreamReader_isEndElement(pObject)

	Func isEntityReference 
		return QXmlStreamReader_isEntityReference(pObject)

	Func isProcessingInstruction 
		return QXmlStreamReader_isProcessingInstruction(pObject)

	Func isStandaloneDocument 
		return QXmlStreamReader_isStandaloneDocument(pObject)

	Func isStartDocument 
		return QXmlStreamReader_isStartDocument(pObject)

	Func isStartElement 
		return QXmlStreamReader_isStartElement(pObject)

	Func isWhitespace 
		return QXmlStreamReader_isWhitespace(pObject)

	Func lineNumber 
		return QXmlStreamReader_lineNumber(pObject)

	Func name 
		pTempObj = new QStringRef
		pTempObj.pObject = QXmlStreamReader_name(pObject)
		return pTempObj

	Func namespaceDeclarations 
		return QXmlStreamReader_namespaceDeclarations(pObject)

	Func namespaceProcessing 
		return QXmlStreamReader_namespaceProcessing(pObject)

	Func namespaceUri 
		pTempObj = new QStringRef
		pTempObj.pObject = QXmlStreamReader_namespaceUri(pObject)
		return pTempObj

	Func notationDeclarations 
		return QXmlStreamReader_notationDeclarations(pObject)

	Func prefix 
		pTempObj = new QStringRef
		pTempObj.pObject = QXmlStreamReader_prefix(pObject)
		return pTempObj

	Func processingInstructionData 
		pTempObj = new QStringRef
		pTempObj.pObject = QXmlStreamReader_processingInstructionData(pObject)
		return pTempObj

	Func processingInstructionTarget 
		pTempObj = new QStringRef
		pTempObj.pObject = QXmlStreamReader_processingInstructionTarget(pObject)
		return pTempObj

	Func qualifiedName 
		pTempObj = new QStringRef
		pTempObj.pObject = QXmlStreamReader_qualifiedName(pObject)
		return pTempObj

	Func raiseError P1
		return QXmlStreamReader_raiseError(pObject,P1)

	Func readElementText P1
		return QXmlStreamReader_readElementText(pObject,P1)

	Func readNext 
		return QXmlStreamReader_readNext(pObject)

	Func readNextStartElement 
		return QXmlStreamReader_readNextStartElement(pObject)

	Func setDevice P1
		return QXmlStreamReader_setDevice(pObject,GetObjectPointerFromRingObject(P1))

	Func setEntityResolver P1
		return QXmlStreamReader_setEntityResolver(pObject,GetObjectPointerFromRingObject(P1))

	Func setNamespaceProcessing P1
		return QXmlStreamReader_setNamespaceProcessing(pObject,P1)

	Func skipCurrentElement 
		return QXmlStreamReader_skipCurrentElement(pObject)

	Func text 
		pTempObj = new QStringRef
		pTempObj.pObject = QXmlStreamReader_text(pObject)
		return pTempObj

	Func tokenString 
		return QXmlStreamReader_tokenString(pObject)

	Func tokenType 
		return QXmlStreamReader_tokenType(pObject)

Class QXmlStreamWriter

	pObject

	Func init 
		pObject = QXmlStreamWriter_new()
		return self

	Func delete
		pObject = QXmlStreamWriter_delete(pObject)

	Func ObjectPointer
		return pObject

	Func autoFormatting 
		return QXmlStreamWriter_autoFormatting(pObject)

	Func autoFormattingIndent 
		return QXmlStreamWriter_autoFormattingIndent(pObject)

	Func codec 
		return QXmlStreamWriter_codec(pObject)

	Func device 
		pTempObj = new QIODevice
		pTempObj.pObject = QXmlStreamWriter_device(pObject)
		return pTempObj

	Func hasError 
		return QXmlStreamWriter_hasError(pObject)

	Func setAutoFormatting P1
		return QXmlStreamWriter_setAutoFormatting(pObject,P1)

	Func setAutoFormattingIndent P1
		return QXmlStreamWriter_setAutoFormattingIndent(pObject,P1)

	Func setCodec P1
		return QXmlStreamWriter_setCodec(pObject,GetObjectPointerFromRingObject(P1))

	Func setCodec_2 P1
		return QXmlStreamWriter_setCodec_2(pObject,P1)

	Func setDevice P1
		return QXmlStreamWriter_setDevice(pObject,GetObjectPointerFromRingObject(P1))

	Func writeAttribute P1,P2,P3
		return QXmlStreamWriter_writeAttribute(pObject,P1,P2,P3)

	Func writeAttribute_2 P1,P2
		return QXmlStreamWriter_writeAttribute_2(pObject,P1,P2)

	Func writeAttribute_3 P1
		return QXmlStreamWriter_writeAttribute_3(pObject,GetObjectPointerFromRingObject(P1))

	Func writeAttributes P1
		return QXmlStreamWriter_writeAttributes(pObject,GetObjectPointerFromRingObject(P1))

	Func writeCDATA P1
		return QXmlStreamWriter_writeCDATA(pObject,P1)

	Func writeCharacters P1
		return QXmlStreamWriter_writeCharacters(pObject,P1)

	Func writeComment P1
		return QXmlStreamWriter_writeComment(pObject,P1)

	Func writeCurrentToken P1
		return QXmlStreamWriter_writeCurrentToken(pObject,GetObjectPointerFromRingObject(P1))

	Func writeDTD P1
		return QXmlStreamWriter_writeDTD(pObject,P1)

	Func writeDefaultNamespace P1
		return QXmlStreamWriter_writeDefaultNamespace(pObject,P1)

	Func writeEmptyElement P1,P2
		return QXmlStreamWriter_writeEmptyElement(pObject,P1,P2)

	Func writeEmptyElement_2 P1
		return QXmlStreamWriter_writeEmptyElement_2(pObject,P1)

	Func writeEndDocument 
		return QXmlStreamWriter_writeEndDocument(pObject)

	Func writeEndElement 
		return QXmlStreamWriter_writeEndElement(pObject)

	Func writeEntityReference P1
		return QXmlStreamWriter_writeEntityReference(pObject,P1)

	Func writeNamespace P1,P2
		return QXmlStreamWriter_writeNamespace(pObject,P1,P2)

	Func writeProcessingInstruction P1,P2
		return QXmlStreamWriter_writeProcessingInstruction(pObject,P1,P2)

	Func writeStartDocument P1
		return QXmlStreamWriter_writeStartDocument(pObject,P1)

	Func writeStartDocument_2 P1,P2
		return QXmlStreamWriter_writeStartDocument_2(pObject,P1,P2)

	Func writeStartDocument_3 
		return QXmlStreamWriter_writeStartDocument_3(pObject)

	Func writeStartElement P1,P2
		return QXmlStreamWriter_writeStartElement(pObject,P1,P2)

	Func writeStartElement_2 P1
		return QXmlStreamWriter_writeStartElement_2(pObject,P1)

	Func writeTextElement P1,P2,P3
		return QXmlStreamWriter_writeTextElement(pObject,P1,P2,P3)

	Func writeTextElement_2 P1,P2
		return QXmlStreamWriter_writeTextElement_2(pObject,P1,P2)

Class QXmlStreamNotationDeclaration

	pObject

	Func init 
		pObject = QXmlStreamNotationDeclaration_new()
		return self

	Func delete
		pObject = QXmlStreamNotationDeclaration_delete(pObject)

	Func ObjectPointer
		return pObject

	Func name 
		pTempObj = new QStringRef
		pTempObj.pObject = QXmlStreamNotationDeclaration_name(pObject)
		return pTempObj

	Func publicId 
		pTempObj = new QStringRef
		pTempObj.pObject = QXmlStreamNotationDeclaration_publicId(pObject)
		return pTempObj

	Func systemId 
		pTempObj = new QStringRef
		pTempObj.pObject = QXmlStreamNotationDeclaration_systemId(pObject)
		return pTempObj

Class QXmlStreamNamespaceDeclaration

	pObject

	Func init 
		pObject = QXmlStreamNamespaceDeclaration_new()
		return self

	Func delete
		pObject = QXmlStreamNamespaceDeclaration_delete(pObject)

	Func ObjectPointer
		return pObject

	Func namespaceUri 
		pTempObj = new QStringRef
		pTempObj.pObject = QXmlStreamNamespaceDeclaration_namespaceUri(pObject)
		return pTempObj

	Func prefix 
		pTempObj = new QStringRef
		pTempObj.pObject = QXmlStreamNamespaceDeclaration_prefix(pObject)
		return pTempObj

Class QXmlStreamEntityDeclaration

	pObject

	Func init 
		pObject = QXmlStreamEntityDeclaration_new()
		return self

	Func delete
		pObject = QXmlStreamEntityDeclaration_delete(pObject)

	Func ObjectPointer
		return pObject

	Func name 
		pTempObj = new QStringRef
		pTempObj.pObject = QXmlStreamEntityDeclaration_name(pObject)
		return pTempObj

	Func notationName 
		pTempObj = new QStringRef
		pTempObj.pObject = QXmlStreamEntityDeclaration_notationName(pObject)
		return pTempObj

	Func publicId 
		pTempObj = new QStringRef
		pTempObj.pObject = QXmlStreamEntityDeclaration_publicId(pObject)
		return pTempObj

	Func systemId 
		pTempObj = new QStringRef
		pTempObj.pObject = QXmlStreamEntityDeclaration_systemId(pObject)
		return pTempObj

	Func value 
		pTempObj = new QStringRef
		pTempObj.pObject = QXmlStreamEntityDeclaration_value(pObject)
		return pTempObj

Class QXmlStreamAttributes

	pObject

	Func init 
		pObject = QXmlStreamAttributes_new()
		return self

	Func delete
		pObject = QXmlStreamAttributes_delete(pObject)

	Func ObjectPointer
		return pObject

	Func append P1,P2,P3
		return QXmlStreamAttributes_append(pObject,P1,P2,P3)

	Func append_2 P1,P2
		return QXmlStreamAttributes_append_2(pObject,P1,P2)

	Func hasAttribute P1
		return QXmlStreamAttributes_hasAttribute(pObject,P1)

	Func hasAttribute_2 P1
		return QXmlStreamAttributes_hasAttribute_2(pObject,GetObjectPointerFromRingObject(P1))

	Func hasAttribute_3 P1,P2
		return QXmlStreamAttributes_hasAttribute_3(pObject,P1,P2)

	Func value P1,P2
		pTempObj = new QStringRef
		pTempObj.pObject = QXmlStreamAttributes_value(pObject,P1,P2)
		return pTempObj

	Func value_2 P1,P2
		pTempObj = new QStringRef
		pTempObj.pObject = QXmlStreamAttributes_value_2(pObject,P1,GetObjectPointerFromRingObject(P2))
		return pTempObj

	Func value_3 P1,P2
		pTempObj = new QStringRef
		pTempObj.pObject = QXmlStreamAttributes_value_3(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2))
		return pTempObj

	Func value_4 P1
		pTempObj = new QStringRef
		pTempObj.pObject = QXmlStreamAttributes_value_4(pObject,P1)
		return pTempObj

	Func value_5 P1
		pTempObj = new QStringRef
		pTempObj.pObject = QXmlStreamAttributes_value_5(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

Class QXmlStreamAttribute

	pObject

	Func init 
		pObject = QXmlStreamAttribute_new()
		return self

	Func delete
		pObject = QXmlStreamAttribute_delete(pObject)

	Func ObjectPointer
		return pObject

	Func isDefault 
		return QXmlStreamAttribute_isDefault(pObject)

	Func name 
		pTempObj = new QStringRef
		pTempObj.pObject = QXmlStreamAttribute_name(pObject)
		return pTempObj

	Func namespaceUri 
		pTempObj = new QStringRef
		pTempObj.pObject = QXmlStreamAttribute_namespaceUri(pObject)
		return pTempObj

	Func prefix 
		pTempObj = new QStringRef
		pTempObj.pObject = QXmlStreamAttribute_prefix(pObject)
		return pTempObj

	Func qualifiedName 
		pTempObj = new QStringRef
		pTempObj.pObject = QXmlStreamAttribute_qualifiedName(pObject)
		return pTempObj

	Func value 
		pTempObj = new QStringRef
		pTempObj.pObject = QXmlStreamAttribute_value(pObject)
		return pTempObj

Class QRegularExpression

	pObject

	Func init 
		pObject = QRegularExpression_new()
		return self

	Func delete
		pObject = QRegularExpression_delete(pObject)

	Func ObjectPointer
		return pObject

	Func captureCount 
		return QRegularExpression_captureCount(pObject)

	Func errorString 
		return QRegularExpression_errorString(pObject)

	Func globalMatch P1,P2,P3,P4
		pTempObj = new QRegularExpressionMatchIterator
		pTempObj.pObject = QRegularExpression_globalMatch(pObject,P1,P2,P3,P4)
		return pTempObj

	Func isValid 
		return QRegularExpression_isValid(pObject)

	Func match P1,P2,P3,P4
		pTempObj = new QRegularExpressionMatch
		pTempObj.pObject = QRegularExpression_match(pObject,P1,P2,P3,P4)
		return pTempObj

	Func namedCaptureGroups 
		pTempObj = new QStringList
		pTempObj.pObject = QRegularExpression_namedCaptureGroups(pObject)
		return pTempObj

	Func pattern 
		return QRegularExpression_pattern(pObject)

	Func patternErrorOffset 
		return QRegularExpression_patternErrorOffset(pObject)

	Func patternOptions 
		return QRegularExpression_patternOptions(pObject)

	Func setPattern P1
		return QRegularExpression_setPattern(pObject,P1)

	Func setPatternOptions P1
		return QRegularExpression_setPatternOptions(pObject,P1)

	Func swap P1
		return QRegularExpression_swap(pObject,GetObjectPointerFromRingObject(P1))

Class QRegularExpressionMatch

	pObject

	Func init 
		pObject = QRegularExpressionMatch_new()
		return self

	Func delete
		pObject = QRegularExpressionMatch_delete(pObject)

	Func ObjectPointer
		return pObject

	Func captured P1
		return QRegularExpressionMatch_captured(pObject,P1)

	Func captured_2 P1
		return QRegularExpressionMatch_captured_2(pObject,GetObjectPointerFromRingObject(P1))

	Func capturedEnd P1
		return QRegularExpressionMatch_capturedEnd(pObject,P1)

	Func capturedEnd_2 P1
		return QRegularExpressionMatch_capturedEnd_2(pObject,GetObjectPointerFromRingObject(P1))

	Func capturedLength P1
		return QRegularExpressionMatch_capturedLength(pObject,P1)

	Func capturedLength_2 P1
		return QRegularExpressionMatch_capturedLength_2(pObject,GetObjectPointerFromRingObject(P1))

	Func capturedRef P1
		pTempObj = new QStringRef
		pTempObj.pObject = QRegularExpressionMatch_capturedRef(pObject,P1)
		return pTempObj

	Func capturedRef_2 P1
		pTempObj = new QStringRef
		pTempObj.pObject = QRegularExpressionMatch_capturedRef_2(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func capturedStart P1
		return QRegularExpressionMatch_capturedStart(pObject,P1)

	Func capturedStart_2 P1
		return QRegularExpressionMatch_capturedStart_2(pObject,GetObjectPointerFromRingObject(P1))

	Func capturedTexts 
		pTempObj = new QStringList
		pTempObj.pObject = QRegularExpressionMatch_capturedTexts(pObject)
		return pTempObj

	Func hasMatch 
		return QRegularExpressionMatch_hasMatch(pObject)

	Func hasPartialMatch 
		return QRegularExpressionMatch_hasPartialMatch(pObject)

	Func isValid 
		return QRegularExpressionMatch_isValid(pObject)

	Func lastCapturedIndex 
		return QRegularExpressionMatch_lastCapturedIndex(pObject)

	Func matchOptions 
		return QRegularExpressionMatch_matchOptions(pObject)

	Func matchType 
		return QRegularExpressionMatch_matchType(pObject)

	Func regularExpression 
		pTempObj = new QRegularExpression
		pTempObj.pObject = QRegularExpressionMatch_regularExpression(pObject)
		return pTempObj

	Func swap P1
		return QRegularExpressionMatch_swap(pObject,GetObjectPointerFromRingObject(P1))

Class QRegularExpressionMatchIterator

	pObject

	Func init 
		pObject = QRegularExpressionMatchIterator_new()
		return self

	Func delete
		pObject = QRegularExpressionMatchIterator_delete(pObject)

	Func ObjectPointer
		return pObject

	Func hasNext 
		return QRegularExpressionMatchIterator_hasNext(pObject)

	Func isValid 
		return QRegularExpressionMatchIterator_isValid(pObject)

	Func matchOptions 
		return QRegularExpressionMatchIterator_matchOptions(pObject)

	Func matchType 
		return QRegularExpressionMatchIterator_matchType(pObject)

	Func nextitem 
		pTempObj = new QRegularExpressionMatch
		pTempObj.pObject = QRegularExpressionMatchIterator_next(pObject)
		return pTempObj

	Func peekNext 
		pTempObj = new QRegularExpressionMatch
		pTempObj.pObject = QRegularExpressionMatchIterator_peekNext(pObject)
		return pTempObj

	Func regularExpression 
		pTempObj = new QRegularExpression
		pTempObj.pObject = QRegularExpressionMatchIterator_regularExpression(pObject)
		return pTempObj

	Func swap P1
		return QRegularExpressionMatchIterator_swap(pObject,GetObjectPointerFromRingObject(P1))

Class QJsonArray

	pObject

	Func init 
		pObject = QJsonArray_new()
		return self

	Func delete
		pObject = QJsonArray_delete(pObject)

	Func ObjectPointer
		return pObject

	Func append P1
		return QJsonArray_append(pObject,GetObjectPointerFromRingObject(P1))

	Func at P1
		pTempObj = new QJsonValue
		pTempObj.pObject = QJsonArray_at(pObject,P1)
		return pTempObj

	Func contains P1
		return QJsonArray_contains(pObject,GetObjectPointerFromRingObject(P1))

	Func count 
		return QJsonArray_count(pObject)

	Func empty 
		return QJsonArray_empty(pObject)

	Func first 
		pTempObj = new QJsonValue
		pTempObj.pObject = QJsonArray_first(pObject)
		return pTempObj

	Func insert P1,P2
		return QJsonArray_insert(pObject,P1,GetObjectPointerFromRingObject(P2))

	Func isEmpty 
		return QJsonArray_isEmpty(pObject)

	Func last 
		pTempObj = new QJsonValue
		pTempObj.pObject = QJsonArray_last(pObject)
		return pTempObj

	Func pop_back 
		return QJsonArray_pop_back(pObject)

	Func pop_front 
		return QJsonArray_pop_front(pObject)

	Func prepend P1
		return QJsonArray_prepend(pObject,GetObjectPointerFromRingObject(P1))

	Func push_back P1
		return QJsonArray_push_back(pObject,GetObjectPointerFromRingObject(P1))

	Func push_front P1
		return QJsonArray_push_front(pObject,GetObjectPointerFromRingObject(P1))

	Func removeAt P1
		return QJsonArray_removeAt(pObject,P1)

	Func removeFirst 
		return QJsonArray_removeFirst(pObject)

	Func removeLast 
		return QJsonArray_removeLast(pObject)

	Func replace P1,P2
		return QJsonArray_replace(pObject,P1,GetObjectPointerFromRingObject(P2))

	Func size 
		return QJsonArray_size(pObject)

	Func takeAt P1
		pTempObj = new QJsonValue
		pTempObj.pObject = QJsonArray_takeAt(pObject,P1)
		return pTempObj

	Func toVariantList 
		return QJsonArray_toVariantList(pObject)

	Func fromStringList P1
		pTempObj = new QJsonArray
		pTempObj.pObject = QJsonArray_fromStringList(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func fromVariantList P1
		pTempObj = new QJsonArray
		pTempObj.pObject = QJsonArray_fromVariantList(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

Class QJsonDocument

	pObject

	Func init 
		pObject = QJsonDocument_new()
		return self

	Func delete
		pObject = QJsonDocument_delete(pObject)

	Func ObjectPointer
		return pObject

	Func array 
		pTempObj = new QJsonArray
		pTempObj.pObject = QJsonDocument_array(pObject)
		return pTempObj

	Func isArray 
		return QJsonDocument_isArray(pObject)

	Func isEmpty 
		return QJsonDocument_isEmpty(pObject)

	Func isNull 
		return QJsonDocument_isNull(pObject)

	Func isObject 
		return QJsonDocument_isObject(pObject)

	Func object 
		pTempObj = new QJsonObject
		pTempObj.pObject = QJsonDocument_object(pObject)
		return pTempObj

	Func setArray P1
		return QJsonDocument_setArray(pObject,GetObjectPointerFromRingObject(P1))

	Func setObject P1
		return QJsonDocument_setObject(pObject,GetObjectPointerFromRingObject(P1))

	Func toJson P1
		pTempObj = new QByteArray
		pTempObj.pObject = QJsonDocument_toJson(pObject,P1)
		return pTempObj

	Func toVariant 
		pTempObj = new QVariant
		pTempObj.pObject = QJsonDocument_toVariant(pObject)
		return pTempObj

	Func fromJson P1,P2
		pTempObj = new QJsonDocument
		pTempObj.pObject = QJsonDocument_fromJson(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2))
		return pTempObj

	Func fromVariant P1
		pTempObj = new QJsonDocument
		pTempObj.pObject = QJsonDocument_fromVariant(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

Class QJsonObject

	pObject

	Func init 
		pObject = QJsonObject_new()
		return self

	Func delete
		pObject = QJsonObject_delete(pObject)

	Func ObjectPointer
		return pObject

	Func contains P1
		return QJsonObject_contains(pObject,P1)

	Func count 
		return QJsonObject_count(pObject)

	Func empty 
		return QJsonObject_empty(pObject)

	Func isEmpty 
		return QJsonObject_isEmpty(pObject)

	Func keys 
		pTempObj = new QStringList
		pTempObj.pObject = QJsonObject_keys(pObject)
		return pTempObj

	Func length 
		return QJsonObject_length(pObject)

	Func remove P1
		return QJsonObject_remove(pObject,P1)

	Func size 
		return QJsonObject_size(pObject)

	Func take P1
		pTempObj = new QJsonValue
		pTempObj.pObject = QJsonObject_take(pObject,P1)
		return pTempObj

	Func toVariantMap 
		return QJsonObject_toVariantMap(pObject)

	Func value P1
		pTempObj = new QJsonValue
		pTempObj.pObject = QJsonObject_value(pObject,P1)
		return pTempObj

	Func fromVariantMap P1
		pTempObj = new QJsonObject
		pTempObj.pObject = QJsonObject_fromVariantMap(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

Class QJsonParseError

	pObject

	Func init 
		pObject = QJsonParseError_new()
		return self

	Func delete
		pObject = QJsonParseError_delete(pObject)

	Func ObjectPointer
		return pObject

	Func errorString 
		return QJsonParseError_errorString(pObject)

Class QJsonValue

	pObject

	Func init 
		pObject = QJsonValue_new()
		return self

	Func delete
		pObject = QJsonValue_delete(pObject)

	Func ObjectPointer
		return pObject

	Func isArray 
		return QJsonValue_isArray(pObject)

	Func isBool 
		return QJsonValue_isBool(pObject)

	Func isDouble 
		return QJsonValue_isDouble(pObject)

	Func isNull 
		return QJsonValue_isNull(pObject)

	Func isObject 
		return QJsonValue_isObject(pObject)

	Func isString 
		return QJsonValue_isString(pObject)

	Func isUndefined 
		return QJsonValue_isUndefined(pObject)

	Func toArray P1
		pTempObj = new QJsonArray
		pTempObj.pObject = QJsonValue_toArray(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func toArray_2 
		pTempObj = new QJsonArray
		pTempObj.pObject = QJsonValue_toArray_2(pObject)
		return pTempObj

	Func toBool P1
		return QJsonValue_toBool(pObject,P1)

	Func toDouble P1
		return QJsonValue_toDouble(pObject,P1)

	Func toInt P1
		return QJsonValue_toInt(pObject,P1)

	Func toObject P1
		pTempObj = new QJsonObject
		pTempObj.pObject = QJsonValue_toObject(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func toObject_2 
		pTempObj = new QJsonObject
		pTempObj.pObject = QJsonValue_toObject_2(pObject)
		return pTempObj

	Func toString P1
		return QJsonValue_toString(pObject,P1)

	Func toVariant 
		pTempObj = new QVariant
		pTempObj.pObject = QJsonValue_toVariant(pObject)
		return pTempObj

	Func type 
		return QJsonValue_type(pObject)

	Func fromVariant P1
		pTempObj = new QJsonValue
		pTempObj.pObject = QJsonValue_fromVariant(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

Class QPointF

	pObject

	Func init 
		pObject = QPointF_new()
		return self

	Func delete
		pObject = QPointF_delete(pObject)

	Func ObjectPointer
		return pObject

	Func isNull 
		return QPointF_isNull(pObject)

	Func manhattanLength 
		return QPointF_manhattanLength(pObject)

	Func rx 
		return QPointF_rx(pObject)

	Func ry 
		return QPointF_ry(pObject)

	Func setX P1
		return QPointF_setX(pObject,P1)

	Func setY P1
		return QPointF_setY(pObject,P1)

	Func toPoint 
		pTempObj = new QPoint
		pTempObj.pObject = QPointF_toPoint(pObject)
		return pTempObj

	Func x 
		return QPointF_x(pObject)

	Func y 
		return QPointF_y(pObject)

Class QPoint

	pObject

	Func init 
		pObject = QPoint_new()
		return self

	Func delete
		pObject = QPoint_delete(pObject)

	Func ObjectPointer
		return pObject

	Func isNull 
		return QPoint_isNull(pObject)

	Func manhattanLength 
		return QPoint_manhattanLength(pObject)

	Func rx 
		return QPoint_rx(pObject)

	Func ry 
		return QPoint_ry(pObject)

	Func setX P1
		return QPoint_setX(pObject,P1)

	Func setY P1
		return QPoint_setY(pObject,P1)

	Func x 
		return QPoint_x(pObject)

	Func y 
		return QPoint_y(pObject)

Class QString2

	pObject

	Func init 
		pObject = QString2_new()
		return self

	Func delete
		pObject = QString2_delete(pObject)

	Func ObjectPointer
		return pObject

	Func split P1,P2,P3
		pTempObj = new QStringList
		pTempObj.pObject = QString2_split(pObject,P1,P2,P3)
		return pTempObj

	Func split_2 P1,P2,P3
		pTempObj = new QStringList
		pTempObj.pObject = QString2_split_2(pObject,GetObjectPointerFromRingObject(P1),P2,P3)
		return pTempObj

	Func split_3 P1,P2
		pTempObj = new QStringList
		pTempObj.pObject = QString2_split_3(pObject,GetObjectPointerFromRingObject(P1),P2)
		return pTempObj

	Func split_4 P1,P2
		pTempObj = new QStringList
		pTempObj.pObject = QString2_split_4(pObject,GetObjectPointerFromRingObject(P1),P2)
		return pTempObj

	Func append P1
		return QString2_append(pObject,P1)

	Func append_2 P1
		return QString2_append_2(pObject,GetObjectPointerFromRingObject(P1))

	Func toUtf8 
		pTempObj = new QByteArray
		pTempObj.pObject = QString2_toUtf8(pObject)
		return pTempObj

	Func toLatin1 
		pTempObj = new QByteArray
		pTempObj.pObject = QString2_toLatin1(pObject)
		return pTempObj

	Func toLocal8Bit 
		pTempObj = new QByteArray
		pTempObj.pObject = QString2_toLocal8Bit(pObject)
		return pTempObj

	Func unicode 
		pTempObj = new QChar
		pTempObj.pObject = QString2_unicode(pObject)
		return pTempObj

	Func number P1,P2
		return QString2_number(pObject,P1,P2)

	Func count 
		return QString2_count(pObject)

	Func left P1
		return QString2_left(pObject,P1)

	Func mid P1,P2
		return QString2_mid(pObject,P1,P2)

	Func right P1
		return QString2_right(pObject,P1)

	Func compare P1,P2
		return QString2_compare(pObject,P1,P2)

	Func contains P1,P2
		return QString2_contains(pObject,P1,P2)

	Func indexOf P1,P2,P3
		return QString2_indexOf(pObject,P1,P2,P3)

	Func lastIndexOf P1,P2,P3
		return QString2_lastIndexOf(pObject,P1,P2,P3)

	Func insert P1,P2
		return QString2_insert(pObject,P1,P2)

	Func isRightToLeft 
		return QString2_isRightToLeft(pObject)

	Func repeated P1
		return QString2_repeated(pObject,P1)

	Func replace P1,P2,P3
		return QString2_replace(pObject,P1,P2,P3)

	Func replace_2 P1,P2,P3
		return QString2_replace_2(pObject,P1,P2,P3)

	Func startsWith P1,P2
		return QString2_startsWith(pObject,P1,P2)

	Func endsWith P1,P2
		return QString2_endsWith(pObject,P1,P2)

	Func toHtmlEscaped 
		return QString2_toHtmlEscaped(pObject)

	Func clear 
		return QString2_clear(pObject)

	Func isNull 
		return QString2_isNull(pObject)

	Func resize P1
		return QString2_resize(pObject,P1)

	Func fill P1,P2
		return QString2_fill(pObject,GetObjectPointerFromRingObject(P1),P2)

	Func localeAwareCompare P1
		return QString2_localeAwareCompare(pObject,P1)

	Func leftJustified P1,P2,P3
		return QString2_leftJustified(pObject,P1,GetObjectPointerFromRingObject(P2),P3)

	Func rightJustified P1,P2,P3
		return QString2_rightJustified(pObject,P1,GetObjectPointerFromRingObject(P2),P3)

	Func section_1 P1,P2,P3,P4
		return QString2_section_1(pObject,GetObjectPointerFromRingObject(P1),P2,P3,GetObjectPointerFromRingObject(P4))

	Func section_2 P1,P2,P3,P4
		return QString2_section_2(pObject,P1,P2,P3,GetObjectPointerFromRingObject(P4))

	Func section_3 P1,P2,P3,P4
		return QString2_section_3(pObject,GetObjectPointerFromRingObject(P1),P2,P3,GetObjectPointerFromRingObject(P4))

	Func section_4 P1,P2,P3,P4
		return QString2_section_4(pObject,GetObjectPointerFromRingObject(P1),P2,P3,GetObjectPointerFromRingObject(P4))

	Func simplified 
		return QString2_simplified(pObject)

	Func toCaseFolded 
		return QString2_toCaseFolded(pObject)

	Func trimmed 
		return QString2_trimmed(pObject)

	Func truncate P1
		return QString2_truncate(pObject,P1)

	Func length 
		return QString2_length(pObject)

	Func size 
		return QString2_size(pObject)

Class QStringRef

	pObject

	Func init 
		pObject = QStringRef_new()
		return self

	Func delete
		pObject = QStringRef_delete(pObject)

	Func ObjectPointer
		return pObject

	Func appendTo P1
		pTempObj = new QStringRef
		pTempObj.pObject = QStringRef_appendTo(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func at P1
		pTempObj = new QChar
		pTempObj.pObject = QStringRef_at(pObject,P1)
		return pTempObj

	Func clear 
		return QStringRef_clear(pObject)

	Func compare_2 P1,P2
		return QStringRef_compare_2(pObject,GetObjectPointerFromRingObject(P1),P2)

	Func compare_3 P1,P2
		return QStringRef_compare_3(pObject,GetObjectPointerFromRingObject(P1),P2)

	Func constData 
		pTempObj = new QChar
		pTempObj.pObject = QStringRef_constData(pObject)
		return pTempObj

	Func contains P1,P2
		return QStringRef_contains(pObject,P1,P2)

	Func contains_2 P1,P2
		return QStringRef_contains_2(pObject,GetObjectPointerFromRingObject(P1),P2)

	Func contains_3 P1,P2
		return QStringRef_contains_3(pObject,GetObjectPointerFromRingObject(P1),P2)

	Func contains_4 P1,P2
		return QStringRef_contains_4(pObject,GetObjectPointerFromRingObject(P1),P2)

	Func count 
		return QStringRef_count(pObject)

	Func count_2 P1,P2
		return QStringRef_count_2(pObject,P1,P2)

	Func count_3 P1,P2
		return QStringRef_count_3(pObject,GetObjectPointerFromRingObject(P1),P2)

	Func count_4 P1,P2
		return QStringRef_count_4(pObject,GetObjectPointerFromRingObject(P1),P2)

	Func data 
		pTempObj = new QChar
		pTempObj.pObject = QStringRef_data(pObject)
		return pTempObj

	Func endsWith P1,P2
		return QStringRef_endsWith(pObject,P1,P2)

	Func endsWith_2 P1,P2
		return QStringRef_endsWith_2(pObject,GetObjectPointerFromRingObject(P1),P2)

	Func endsWith_3 P1,P2
		return QStringRef_endsWith_3(pObject,GetObjectPointerFromRingObject(P1),P2)

	Func endsWith_4 P1,P2
		return QStringRef_endsWith_4(pObject,GetObjectPointerFromRingObject(P1),P2)

	Func indexOf P1,P2,P3
		return QStringRef_indexOf(pObject,P1,P2,P3)

	Func indexOf_2 P1,P2,P3
		return QStringRef_indexOf_2(pObject,GetObjectPointerFromRingObject(P1),P2,P3)

	Func indexOf_3 P1,P2,P3
		return QStringRef_indexOf_3(pObject,GetObjectPointerFromRingObject(P1),P2,P3)

	Func indexOf_4 P1,P2,P3
		return QStringRef_indexOf_4(pObject,GetObjectPointerFromRingObject(P1),P2,P3)

	Func isEmpty 
		return QStringRef_isEmpty(pObject)

	Func isNull 
		return QStringRef_isNull(pObject)

	Func lastIndexOf P1,P2,P3
		return QStringRef_lastIndexOf(pObject,P1,P2,P3)

	Func lastIndexOf_2 P1,P2,P3
		return QStringRef_lastIndexOf_2(pObject,GetObjectPointerFromRingObject(P1),P2,P3)

	Func lastIndexOf_3 P1,P2,P3
		return QStringRef_lastIndexOf_3(pObject,GetObjectPointerFromRingObject(P1),P2,P3)

	Func lastIndexOf_4 P1,P2,P3
		return QStringRef_lastIndexOf_4(pObject,GetObjectPointerFromRingObject(P1),P2,P3)

	Func length 
		return QStringRef_length(pObject)

	Func localeAwareCompare P1
		return QStringRef_localeAwareCompare(pObject,P1)

	Func localeAwareCompare_2 P1
		return QStringRef_localeAwareCompare_2(pObject,GetObjectPointerFromRingObject(P1))

	Func position 
		return QStringRef_position(pObject)

	Func size 
		return QStringRef_size(pObject)

	Func startsWith P1,P2
		return QStringRef_startsWith(pObject,P1,P2)

	Func startsWith_2 P1,P2
		return QStringRef_startsWith_2(pObject,GetObjectPointerFromRingObject(P1),P2)

	Func startsWith_3 P1,P2
		return QStringRef_startsWith_3(pObject,GetObjectPointerFromRingObject(P1),P2)

	Func startsWith_4 P1,P2
		return QStringRef_startsWith_4(pObject,GetObjectPointerFromRingObject(P1),P2)

	Func string 
		return QStringRef_string(pObject)

	Func toLatin1 
		pTempObj = new QByteArray
		pTempObj.pObject = QStringRef_toLatin1(pObject)
		return pTempObj

	Func toLocal8Bit 
		pTempObj = new QByteArray
		pTempObj.pObject = QStringRef_toLocal8Bit(pObject)
		return pTempObj

	Func toString 
		return QStringRef_toString(pObject)

	Func toUcs4 
		return QStringRef_toUcs4(pObject)

	Func toUtf8 
		pTempObj = new QByteArray
		pTempObj.pObject = QStringRef_toUtf8(pObject)
		return pTempObj

	Func unicode 
		pTempObj = new QChar
		pTempObj.pObject = QStringRef_unicode(pObject)
		return pTempObj

	Func compare_4 P1,P2,P3
		return QStringRef_compare_4(pObject,GetObjectPointerFromRingObject(P1),P2,P3)

	Func compare_5 P1,P2,P3
		return QStringRef_compare_5(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2),P3)

	Func compare_6 P1,P2,P3
		return QStringRef_compare_6(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2),P3)

	Func localeAwareCompare_3 P1,P2
		return QStringRef_localeAwareCompare_3(pObject,GetObjectPointerFromRingObject(P1),P2)

	Func localeAwareCompare_4 P1,P2
		return QStringRef_localeAwareCompare_4(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2))

Class QBuffer from QIODevice

	pObject

	Func init P1
		pObject = QBuffer_new(GetObjectPointerFromRingObject(P1))
		return self

	Func delete
		pObject = QBuffer_delete(pObject)

	Func ObjectPointer
		return pObject

	Func buffer 
		pTempObj = new QByteArray
		pTempObj.pObject = QBuffer_buffer(pObject)
		return pTempObj

	Func data 
		pTempObj = new QByteArray
		pTempObj.pObject = QBuffer_data(pObject)
		return pTempObj

	Func setBuffer P1
		return QBuffer_setBuffer(pObject,GetObjectPointerFromRingObject(P1))

	Func setData P1
		return QBuffer_setData(pObject,GetObjectPointerFromRingObject(P1))

	Func setData_2 P1,P2
		return QBuffer_setData_2(pObject,P1,P2)

Class QDateTime

	pObject

	Func init 
		pObject = QDateTime_new()
		return self

	Func delete
		pObject = QDateTime_delete(pObject)

	Func ObjectPointer
		return pObject

	Func addDays P1
		pTempObj = new QDateTime
		pTempObj.pObject = QDateTime_addDays(pObject,P1)
		return pTempObj

	Func addMSecs P1
		pTempObj = new QDateTime
		pTempObj.pObject = QDateTime_addMSecs(pObject,P1)
		return pTempObj

	Func addMonths P1
		pTempObj = new QDateTime
		pTempObj.pObject = QDateTime_addMonths(pObject,P1)
		return pTempObj

	Func addSecs P1
		pTempObj = new QDateTime
		pTempObj.pObject = QDateTime_addSecs(pObject,P1)
		return pTempObj

	Func addYears P1
		pTempObj = new QDateTime
		pTempObj.pObject = QDateTime_addYears(pObject,P1)
		return pTempObj

	Func date 
		pTempObj = new QDate
		pTempObj.pObject = QDateTime_date(pObject)
		return pTempObj

	Func daysTo P1
		return QDateTime_daysTo(pObject,GetObjectPointerFromRingObject(P1))

	Func isNull 
		return QDateTime_isNull(pObject)

	Func isValid 
		return QDateTime_isValid(pObject)

	Func msecsTo P1
		return QDateTime_msecsTo(pObject,GetObjectPointerFromRingObject(P1))

	Func secsTo P1
		return QDateTime_secsTo(pObject,GetObjectPointerFromRingObject(P1))

	Func setDate P1
		return QDateTime_setDate(pObject,GetObjectPointerFromRingObject(P1))

	Func setMSecsSinceEpoch P1
		return QDateTime_setMSecsSinceEpoch(pObject,P1)

	Func setTime P1
		return QDateTime_setTime(pObject,GetObjectPointerFromRingObject(P1))

	Func setTimeSpec P1
		return QDateTime_setTimeSpec(pObject,P1)

	Func time 
		pTempObj = new QTime
		pTempObj.pObject = QDateTime_time(pObject)
		return pTempObj

	Func timeSpec 
		return QDateTime_timeSpec(pObject)

	Func toLocalTime 
		pTempObj = new QDateTime
		pTempObj.pObject = QDateTime_toLocalTime(pObject)
		return pTempObj

	Func toMSecsSinceEpoch 
		return QDateTime_toMSecsSinceEpoch(pObject)

	Func toString P1
		return QDateTime_toString(pObject,P1)

	Func toString_2 P1
		return QDateTime_toString_2(pObject,P1)

	Func toTimeSpec P1
		pTempObj = new QDateTime
		pTempObj.pObject = QDateTime_toTimeSpec(pObject,P1)
		return pTempObj

	Func toUTC 
		pTempObj = new QDateTime
		pTempObj.pObject = QDateTime_toUTC(pObject)
		return pTempObj

	Func currentDateTime 
		pTempObj = new QDateTime
		pTempObj.pObject = QDateTime_currentDateTime(pObject)
		return pTempObj

	Func currentDateTimeUtc 
		pTempObj = new QDateTime
		pTempObj.pObject = QDateTime_currentDateTimeUtc(pObject)
		return pTempObj

	Func currentMSecsSinceEpoch 
		return QDateTime_currentMSecsSinceEpoch(pObject)

	Func fromMSecsSinceEpoch P1
		pTempObj = new QDateTime
		pTempObj.pObject = QDateTime_fromMSecsSinceEpoch(pObject,P1)
		return pTempObj

	Func fromString P1,P2
		pTempObj = new QDateTime
		pTempObj.pObject = QDateTime_fromString(pObject,P1,P2)
		return pTempObj

	Func fromString_2 P1,P2
		pTempObj = new QDateTime
		pTempObj.pObject = QDateTime_fromString_2(pObject,P1,P2)
		return pTempObj

Class QCoreApplication from QObject

	pObject


	Func installNativeEventFilter P1
		return QCoreApplication_installNativeEventFilter(GetObjectPointerFromRingObject(P1))

	Func removeNativeEventFilter P1
		return QCoreApplication_removeNativeEventFilter(GetObjectPointerFromRingObject(P1))

	Func quit 
		return QCoreApplication_quit()

	Func addLibraryPath P1
		return QCoreApplication_addLibraryPath(P1)

	Func applicationDirPath 
		return QCoreApplication_applicationDirPath()

	Func applicationFilePath 
		return QCoreApplication_applicationFilePath()

	Func applicationName 
		return QCoreApplication_applicationName()

	Func applicationPid 
		return QCoreApplication_applicationPid()

	Func applicationVersion 
		return QCoreApplication_applicationVersion()

	Func arguments 
		pTempObj = new QStringList
		pTempObj.pObject = QCoreApplication_arguments()
		return pTempObj

	Func closingDown 
		return QCoreApplication_closingDown()

	Func eventDispatcher 
		return QCoreApplication_eventDispatcher()

	Func exec 
		return QCoreApplication_exec()

	Func exitfromapplication P1
		return QCoreApplication_exit(P1)

	Func installTranslator P1
		return QCoreApplication_installTranslator(GetObjectPointerFromRingObject(P1))

	Func instance 
		return QCoreApplication_instance()

	Func isQuitLockEnabled 
		return QCoreApplication_isQuitLockEnabled()

	Func libraryPaths 
		pTempObj = new QStringList
		pTempObj.pObject = QCoreApplication_libraryPaths()
		return pTempObj

	Func organizationDomain 
		return QCoreApplication_organizationDomain()

	Func organizationName 
		return QCoreApplication_organizationName()

	Func postEvent P1,P2,P3
		return QCoreApplication_postEvent(GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2),P3)

	Func processEvents P1
		return QCoreApplication_processEvents(P1)

	Func processEvents_2 P1,P2
		return QCoreApplication_processEvents_2(P1,P2)

	Func removeLibraryPath P1
		return QCoreApplication_removeLibraryPath(P1)

	Func removePostedEvents P1,P2
		return QCoreApplication_removePostedEvents(GetObjectPointerFromRingObject(P1),P2)

	Func removeTranslator P1
		return QCoreApplication_removeTranslator(GetObjectPointerFromRingObject(P1))

	Func sendEvent P1,P2
		return QCoreApplication_sendEvent(GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2))

	Func sendPostedEvents P1,P2
		return QCoreApplication_sendPostedEvents(GetObjectPointerFromRingObject(P1),P2)

	Func setApplicationName P1
		return QCoreApplication_setApplicationName(P1)

	Func setApplicationVersion P1
		return QCoreApplication_setApplicationVersion(P1)

	Func setAttribute P1,P2
		return QCoreApplication_setAttribute(P1,P2)

	Func setEventDispatcher P1
		return QCoreApplication_setEventDispatcher(GetObjectPointerFromRingObject(P1))

	Func setLibraryPaths P1
		return QCoreApplication_setLibraryPaths(GetObjectPointerFromRingObject(P1))

	Func setOrganizationDomain P1
		return QCoreApplication_setOrganizationDomain(P1)

	Func setOrganizationName P1
		return QCoreApplication_setOrganizationName(P1)

	Func setQuitLockEnabled P1
		return QCoreApplication_setQuitLockEnabled(P1)

	Func startingUp 
		return QCoreApplication_startingUp()

	Func testAttribute P1
		return QCoreApplication_testAttribute(P1)

	Func translate P1,P2,P3,P4
		return QCoreApplication_translate(P1,P2,P3,P4)

Class QFile from QFileDevice

	pObject

	Func init 
		pObject = QFile_new()
		return self

	Func delete
		pObject = QFile_delete(pObject)

	Func ObjectPointer
		return pObject

	Func copy P1
		return QFile_copy(pObject,P1)

	Func exists 
		return QFile_exists(pObject)

	Func link P1
		return QFile_link(pObject,P1)

	Func open P1,P2,P3
		return QFile_open(pObject,GetObjectPointerFromRingObject(P1),P2,P3)

	Func open_2 P1,P2,P3
		return QFile_open_2(pObject,P1,P2,P3)

	Func open_3 P1
		return QFile_open_3(pObject,P1)

	Func remove 
		return QFile_remove(pObject)

	Func rename P1
		return QFile_rename(pObject,P1)

	Func setFileName P1
		return QFile_setFileName(pObject,P1)

	Func symLinkTarget 
		return QFile_symLinkTarget(pObject)

	Func copy_2 P1,P2
		return QFile_copy_2(pObject,P1,P2)

	Func decodeName P1
		return QFile_decodeName(pObject,GetObjectPointerFromRingObject(P1))

	Func decodeName_2 P1
		return QFile_decodeName_2(pObject,P1)

	Func encodeName P1
		pTempObj = new QByteArray
		pTempObj.pObject = QFile_encodeName(pObject,P1)
		return pTempObj

	Func exists_2 P1
		return QFile_exists_2(pObject,P1)

	Func link_2 P1,P2
		return QFile_link_2(pObject,P1,P2)

	Func permissions P1
		return QFile_permissions(pObject,P1)

	Func remove_2 P1
		return QFile_remove_2(pObject,P1)

	Func rename_2 P1,P2
		return QFile_rename_2(pObject,P1,P2)

	Func resize P1,P2
		return QFile_resize(pObject,P1,P2)

	Func setPermissions P1,P2
		return QFile_setPermissions(pObject,P1,P2)

	Func symLinkTarget_2 P1
		return QFile_symLinkTarget_2(pObject,P1)

Class QFileDevice from QIODevice

	pObject


	Func error 
		return QFileDevice_error()

	Func flush 
		return QFileDevice_flush()

	Func handle 
		return QFileDevice_handle()

	Func map P1,P2,P3
		return QFileDevice_map(P1,P2,P3)

	Func permissions 
		return QFileDevice_permissions()

	Func resize P1
		return QFileDevice_resize(P1)

	Func fileName 
		return QFileDevice_fileName()

	Func setPermissions P1
		return QFileDevice_setPermissions(P1)

	Func unmap P1
		return QFileDevice_unmap(GetObjectPointerFromRingObject(P1))

	Func unsetError 
		return QFileDevice_unsetError()

Class QStandardPaths

	pObject


	Func displayName P1
		return QStandardPaths_displayName(P1)

	Func findExecutable P1,P2
		return QStandardPaths_findExecutable(P1,GetObjectPointerFromRingObject(P2))

	Func locate P1,P2,P3
		return QStandardPaths_locate(P1,P2,P3)

	Func locateAll P1,P2,P3
		pTempObj = new QStringList
		pTempObj.pObject = QStandardPaths_locateAll(P1,P2,P3)
		return pTempObj

	Func setTestModeEnabled P1
		return QStandardPaths_setTestModeEnabled(P1)

	Func standardLocations P1
		pTempObj = new QStringList
		pTempObj.pObject = QStandardPaths_standardLocations(P1)
		return pTempObj

	Func writableLocation P1
		return QStandardPaths_writableLocation(P1)

Class QMimeData from QObject

	pObject

	Func init 
		pObject = QMimeData_new()
		return self

	Func delete
		pObject = QMimeData_delete(pObject)

	Func ObjectPointer
		return pObject

	Func clear 
		return QMimeData_clear(pObject)

	Func colorData 
		pTempObj = new QVariant
		pTempObj.pObject = QMimeData_colorData(pObject)
		return pTempObj

	Func data P1
		pTempObj = new QByteArray
		pTempObj.pObject = QMimeData_data(pObject,P1)
		return pTempObj

	Func formats 
		pTempObj = new QStringList
		pTempObj.pObject = QMimeData_formats(pObject)
		return pTempObj

	Func hasColor 
		return QMimeData_hasColor(pObject)

	Func hasFormat P1
		return QMimeData_hasFormat(pObject,P1)

	Func hasHtml 
		return QMimeData_hasHtml(pObject)

	Func hasImage 
		return QMimeData_hasImage(pObject)

	Func hasText 
		return QMimeData_hasText(pObject)

	Func hasUrls 
		return QMimeData_hasUrls(pObject)

	Func html 
		return QMimeData_html(pObject)

	Func imageData 
		pTempObj = new QVariant
		pTempObj.pObject = QMimeData_imageData(pObject)
		return pTempObj

	Func removeFormat P1
		return QMimeData_removeFormat(pObject,P1)

	Func setColorData P1
		return QMimeData_setColorData(pObject,GetObjectPointerFromRingObject(P1))

	Func setData P1,P2
		return QMimeData_setData(pObject,P1,GetObjectPointerFromRingObject(P2))

	Func setHtml P1
		return QMimeData_setHtml(pObject,P1)

	Func setImageData P1
		return QMimeData_setImageData(pObject,GetObjectPointerFromRingObject(P1))

	Func setText P1
		return QMimeData_setText(pObject,P1)

	Func setUrls P1
		return QMimeData_setUrls(pObject,GetObjectPointerFromRingObject(P1))

	Func text 
		return QMimeData_text(pObject)

	Func urls 
		return QMimeData_urls(pObject)

Class QChar

	pObject

	Func init P1
		pObject = QChar_new(P1)
		return self

	Func delete
		pObject = QChar_delete(pObject)

	Func ObjectPointer
		return pObject

	Func category 
		return QChar_category(pObject)

	Func cell 
		return QChar_cell(pObject)

	Func combiningClass 
		return QChar_combiningClass(pObject)

	Func decomposition 
		return QChar_decomposition(pObject)

	Func decompositionTag 
		return QChar_decompositionTag(pObject)

	Func digitValue 
		return QChar_digitValue(pObject)

	Func direction 
		return QChar_direction(pObject)

	Func hasMirrored 
		return QChar_hasMirrored(pObject)

	Func isDigit 
		return QChar_isDigit(pObject)

	Func isHighSurrogate 
		return QChar_isHighSurrogate(pObject)

	Func isLetter 
		return QChar_isLetter(pObject)

	Func isLetterOrNumber 
		return QChar_isLetterOrNumber(pObject)

	Func isLowSurrogate 
		return QChar_isLowSurrogate(pObject)

	Func isLower 
		return QChar_isLower(pObject)

	Func isMark 
		return QChar_isMark(pObject)

	Func isNonCharacter 
		return QChar_isNonCharacter(pObject)

	Func isNull 
		return QChar_isNull(pObject)

	Func isNumber 
		return QChar_isNumber(pObject)

	Func isPrint 
		return QChar_isPrint(pObject)

	Func isPunct 
		return QChar_isPunct(pObject)

	Func isSpace 
		return QChar_isSpace(pObject)

	Func isSurrogate 
		return QChar_isSurrogate(pObject)

	Func isSymbol 
		return QChar_isSymbol(pObject)

	Func isTitleCase 
		return QChar_isTitleCase(pObject)

	Func isUpper 
		return QChar_isUpper(pObject)

	Func mirroredChar 
		pTempObj = new QChar
		pTempObj.pObject = QChar_mirroredChar(pObject)
		return pTempObj

	Func row 
		return QChar_row(pObject)

	Func script 
		return QChar_script(pObject)

	Func toCaseFolded 
		pTempObj = new QChar
		pTempObj.pObject = QChar_toCaseFolded(pObject)
		return pTempObj

	Func toLatin1 
		return QChar_toLatin1(pObject)

	Func toLower 
		pTempObj = new QChar
		pTempObj.pObject = QChar_toLower(pObject)
		return pTempObj

	Func toTitleCase 
		pTempObj = new QChar
		pTempObj.pObject = QChar_toTitleCase(pObject)
		return pTempObj

	Func toUpper 
		pTempObj = new QChar
		pTempObj.pObject = QChar_toUpper(pObject)
		return pTempObj

	Func unicode 
		return QChar_unicode(pObject)

	Func unicode_2 
		return QChar_unicode_2(pObject)

	Func unicodeVersion 
		return QChar_unicodeVersion(pObject)

	Func category_2 P1
		return QChar_category_2(pObject,P1)

	Func combiningClass_2 P1
		return QChar_combiningClass_2(pObject,P1)

	Func currentUnicodeVersion 
		return QChar_currentUnicodeVersion(pObject)

	Func decomposition_2 P1
		return QChar_decomposition_2(pObject,P1)

	Func decompositionTag_2 P1
		return QChar_decompositionTag_2(pObject,P1)

	Func digitValue_2 P1
		return QChar_digitValue_2(pObject,P1)

	Func direction_2 P1
		return QChar_direction_2(pObject,P1)

	Func fromLatin1 P1
		pTempObj = new QChar
		pTempObj.pObject = QChar_fromLatin1(pObject,P1)
		return pTempObj

	Func hasMirrored_2 P1
		return QChar_hasMirrored_2(pObject,P1)

	Func highSurrogate P1
		return QChar_highSurrogate(pObject,P1)

	Func isDigit_2 P1
		return QChar_isDigit_2(pObject,P1)

	Func isHighSurrogate_2 P1
		return QChar_isHighSurrogate_2(pObject,P1)

	Func isLetter_2 P1
		return QChar_isLetter_2(pObject,P1)

	Func isLetterOrNumber_2 P1
		return QChar_isLetterOrNumber_2(pObject,P1)

	Func isLowSurrogate_2 P1
		return QChar_isLowSurrogate_2(pObject,P1)

	Func isLower_2 P1
		return QChar_isLower_2(pObject,P1)

	Func isMark_2 P1
		return QChar_isMark_2(pObject,P1)

	Func isNonCharacter_2 P1
		return QChar_isNonCharacter_2(pObject,P1)

	Func isNumber_2 P1
		return QChar_isNumber_2(pObject,P1)

	Func isPrint_2 P1
		return QChar_isPrint_2(pObject,P1)

	Func isPunct_2 P1
		return QChar_isPunct_2(pObject,P1)

	Func isSpace_2 P1
		return QChar_isSpace_2(pObject,P1)

	Func isSurrogate_2 P1
		return QChar_isSurrogate_2(pObject,P1)

	Func isSymbol_2 P1
		return QChar_isSymbol_2(pObject,P1)

	Func isTitleCase_2 P1
		return QChar_isTitleCase_2(pObject,P1)

	Func isUpper_2 P1
		return QChar_isUpper_2(pObject,P1)

	Func lowSurrogate P1
		return QChar_lowSurrogate(pObject,P1)

	Func mirroredChar_2 P1
		return QChar_mirroredChar_2(pObject,P1)

	Func requiresSurrogates P1
		return QChar_requiresSurrogates(pObject,P1)

	Func script_2 P1
		return QChar_script_2(pObject,P1)

	Func surrogateToUcs4 P1,P2
		return QChar_surrogateToUcs4(pObject,P1,P2)

	Func surrogateToUcs4_2 P1,P2
		return QChar_surrogateToUcs4_2(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2))

	Func toCaseFolded_2 P1
		return QChar_toCaseFolded_2(pObject,P1)

	Func toLower_2 P1
		return QChar_toLower_2(pObject,P1)

	Func toTitleCase_2 P1
		return QChar_toTitleCase_2(pObject,P1)

	Func toUpper_2 P1
		return QChar_toUpper_2(pObject,P1)

	Func unicodeVersion_2 P1
		return QChar_unicodeVersion_2(pObject,P1)

Class QChildEvent from QEvent

	pObject

	Func init P1,P2
		pObject = QChildEvent_new(P1,GetObjectPointerFromRingObject(P2))
		return self

	Func delete
		pObject = QChildEvent_delete(pObject)

	Func ObjectPointer
		return pObject

	Func added 
		return QChildEvent_added(pObject)

	Func child 
		pTempObj = new QObject
		pTempObj.pObject = QChildEvent_child(pObject)
		return pTempObj

	Func polished 
		return QChildEvent_polished(pObject)

	Func removed 
		return QChildEvent_removed(pObject)

Class QTextStream

	pObject

	Func init 
		pObject = QTextStream_new()
		return self

	Func delete
		pObject = QTextStream_delete(pObject)

	Func ObjectPointer
		return pObject

	Func atEnd 
		return QTextStream_atEnd(pObject)

	Func autoDetectUnicode 
		return QTextStream_autoDetectUnicode(pObject)

	Func codec 
		return QTextStream_codec(pObject)

	Func device 
		pTempObj = new QIODevice
		pTempObj.pObject = QTextStream_device(pObject)
		return pTempObj

	Func fieldAlignment 
		return QTextStream_fieldAlignment(pObject)

	Func fieldWidth 
		return QTextStream_fieldWidth(pObject)

	Func flush 
		return QTextStream_flush(pObject)

	Func generateByteOrderMark 
		return QTextStream_generateByteOrderMark(pObject)

	Func integerBase 
		return QTextStream_integerBase(pObject)

	Func locale 
		pTempObj = new QLocale
		pTempObj.pObject = QTextStream_locale(pObject)
		return pTempObj

	Func numberFlags 
		return QTextStream_numberFlags(pObject)

	Func padChar 
		pTempObj = new QChar
		pTempObj.pObject = QTextStream_padChar(pObject)
		return pTempObj

	Func pos 
		return QTextStream_pos(pObject)

	Func read P1
		return QTextStream_read(pObject,P1)

	Func readAll 
		return QTextStream_readAll(pObject)

	Func readLine P1
		return QTextStream_readLine(pObject,P1)

	Func realNumberNotation 
		return QTextStream_realNumberNotation(pObject)

	Func realNumberPrecision 
		return QTextStream_realNumberPrecision(pObject)

	Func reset 
		return QTextStream_reset(pObject)

	Func resetStatus 
		return QTextStream_resetStatus(pObject)

	Func seek P1
		return QTextStream_seek(pObject,P1)

	Func setAutoDetectUnicode P1
		return QTextStream_setAutoDetectUnicode(pObject,P1)

	Func setCodec P1
		return QTextStream_setCodec(pObject,GetObjectPointerFromRingObject(P1))

	Func setCodec_2 P1
		return QTextStream_setCodec_2(pObject,P1)

	Func setDevice P1
		return QTextStream_setDevice(pObject,GetObjectPointerFromRingObject(P1))

	Func setFieldAlignment P1
		return QTextStream_setFieldAlignment(pObject,P1)

	Func setFieldWidth P1
		return QTextStream_setFieldWidth(pObject,P1)

	Func setGenerateByteOrderMark P1
		return QTextStream_setGenerateByteOrderMark(pObject,P1)

	Func setIntegerBase P1
		return QTextStream_setIntegerBase(pObject,P1)

	Func setLocale P1
		return QTextStream_setLocale(pObject,GetObjectPointerFromRingObject(P1))

	Func setNumberFlags P1
		return QTextStream_setNumberFlags(pObject,P1)

	Func setPadChar P1
		return QTextStream_setPadChar(pObject,GetObjectPointerFromRingObject(P1))

	Func setRealNumberNotation P1
		return QTextStream_setRealNumberNotation(pObject,P1)

	Func setRealNumberPrecision P1
		return QTextStream_setRealNumberPrecision(pObject,P1)

	Func setStatus P1
		return QTextStream_setStatus(pObject,P1)

	Func setString P1,P2
		return QTextStream_setString(pObject,GetObjectPointerFromRingObject(P1),P2)

	Func skipWhiteSpace 
		return QTextStream_skipWhiteSpace(pObject)

	Func status 
		return QTextStream_status(pObject)

	Func string 
		return QTextStream_string(pObject)

Class QLocale

	pObject

	Func init P1
		pObject = QLocale_new(P1)
		return self

	Func delete
		pObject = QLocale_delete(pObject)

	Func ObjectPointer
		return pObject

	Func amText 
		return QLocale_amText(pObject)

	Func bcp47Name 
		return QLocale_bcp47Name(pObject)

	Func country 
		return QLocale_country(pObject)

	Func createSeparatedList P1
		return QLocale_createSeparatedList(pObject,GetObjectPointerFromRingObject(P1))

	Func currencySymbol P1
		return QLocale_currencySymbol(pObject,P1)

	Func dateFormat P1
		return QLocale_dateFormat(pObject,P1)

	Func dateTimeFormat P1
		return QLocale_dateTimeFormat(pObject,P1)

	Func dayName P1,P2
		return QLocale_dayName(pObject,P1,P2)

	Func decimalPoint 
		pTempObj = new QChar
		pTempObj.pObject = QLocale_decimalPoint(pObject)
		return pTempObj

	Func exponential 
		pTempObj = new QChar
		pTempObj.pObject = QLocale_exponential(pObject)
		return pTempObj

	Func firstDayOfWeek 
		return QLocale_firstDayOfWeek(pObject)

	Func groupSeparator 
		pTempObj = new QChar
		pTempObj.pObject = QLocale_groupSeparator(pObject)
		return pTempObj

	Func language 
		return QLocale_language(pObject)

	Func measurementSystem 
		return QLocale_measurementSystem(pObject)

	Func monthName P1,P2
		return QLocale_monthName(pObject,P1,P2)

	Func name 
		return QLocale_name(pObject)

	Func nativeCountryName 
		return QLocale_nativeCountryName(pObject)

	Func nativeLanguageName 
		return QLocale_nativeLanguageName(pObject)

	Func negativeSign 
		pTempObj = new QChar
		pTempObj.pObject = QLocale_negativeSign(pObject)
		return pTempObj

	Func numberOptions 
		return QLocale_numberOptions(pObject)

	Func percent 
		pTempObj = new QChar
		pTempObj.pObject = QLocale_percent(pObject)
		return pTempObj

	Func pmText 
		return QLocale_pmText(pObject)

	Func positiveSign 
		pTempObj = new QChar
		pTempObj.pObject = QLocale_positiveSign(pObject)
		return pTempObj

	Func quoteString P1,P2
		return QLocale_quoteString(pObject,P1,P2)

	Func quoteString_2 P1,P2
		return QLocale_quoteString_2(pObject,GetObjectPointerFromRingObject(P1),P2)

	Func script 
		return QLocale_script(pObject)

	Func setNumberOptions P1
		return QLocale_setNumberOptions(pObject,P1)

	Func standaloneDayName P1,P2
		return QLocale_standaloneDayName(pObject,P1,P2)

	Func standaloneMonthName P1,P2
		return QLocale_standaloneMonthName(pObject,P1,P2)

	Func textDirection 
		return QLocale_textDirection(pObject)

	Func timeFormat P1
		return QLocale_timeFormat(pObject,P1)

	Func toDouble P1,P2
		return QLocale_toDouble(pObject,P1,GetObjectPointerFromRingObject(P2))

	Func toDouble_2 P1,P2
		return QLocale_toDouble_2(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2))

	Func toFloat P1,P2
		return QLocale_toFloat(pObject,P1,GetObjectPointerFromRingObject(P2))

	Func toFloat_2 P1,P2
		return QLocale_toFloat_2(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2))

	Func toInt P1,P2
		return QLocale_toInt(pObject,P1,GetObjectPointerFromRingObject(P2))

	Func toInt_2 P1,P2
		return QLocale_toInt_2(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2))

	Func toLongLong P1,P2
		return QLocale_toLongLong(pObject,P1,GetObjectPointerFromRingObject(P2))

	Func toLongLong_2 P1,P2
		return QLocale_toLongLong_2(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2))

	Func toLower P1
		return QLocale_toLower(pObject,P1)

	Func toShort P1,P2
		return QLocale_toShort(pObject,P1,GetObjectPointerFromRingObject(P2))

	Func toShort_2 P1,P2
		return QLocale_toShort_2(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2))

	Func toString P1
		return QLocale_toString(pObject,GetObjectPointerFromRingObject(P1))

	Func toString_2 P1
		return QLocale_toString_2(pObject,GetObjectPointerFromRingObject(P1))

	Func toString_4 P1
		return QLocale_toString_4(pObject,GetObjectPointerFromRingObject(P1))

	Func toString_5 P1
		return QLocale_toString_5(pObject,P1)

	Func toString_6 P1
		return QLocale_toString_6(pObject,P1)

	Func toString_7 P1
		return QLocale_toString_7(pObject,P1)

	Func toString_8 P1,P2,P3
		return QLocale_toString_8(pObject,P1,P2,P3)

	Func toString_9 P1,P2,P3
		return QLocale_toString_9(pObject,P1,P2,P3)

	Func toString_10 P1,P2
		return QLocale_toString_10(pObject,GetObjectPointerFromRingObject(P1),P2)

	Func toString_11 P1,P2
		return QLocale_toString_11(pObject,GetObjectPointerFromRingObject(P1),P2)

	Func toString_12 P1,P2
		return QLocale_toString_12(pObject,GetObjectPointerFromRingObject(P1),P2)

	Func toString_13 P1,P2
		return QLocale_toString_13(pObject,GetObjectPointerFromRingObject(P1),P2)

	Func toString_14 P1,P2
		return QLocale_toString_14(pObject,GetObjectPointerFromRingObject(P1),P2)

	Func toString_15 P1,P2
		return QLocale_toString_15(pObject,GetObjectPointerFromRingObject(P1),P2)

	Func toTime P1,P2
		pTempObj = new QTime
		pTempObj.pObject = QLocale_toTime(pObject,P1,P2)
		return pTempObj

	Func toTime_2 P1,P2
		pTempObj = new QTime
		pTempObj.pObject = QLocale_toTime_2(pObject,P1,P2)
		return pTempObj

	Func toUInt P1,P2
		return QLocale_toUInt(pObject,P1,GetObjectPointerFromRingObject(P2))

	Func toUInt_2 P1,P2
		return QLocale_toUInt_2(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2))

	Func toULongLong P1,P2
		return QLocale_toULongLong(pObject,P1,GetObjectPointerFromRingObject(P2))

	Func toULongLong_2 P1,P2
		return QLocale_toULongLong_2(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2))

	Func toUShort P1,P2
		return QLocale_toUShort(pObject,P1,GetObjectPointerFromRingObject(P2))

	Func toUShort_2 P1,P2
		return QLocale_toUShort_2(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2))

	Func toUpper P1
		return QLocale_toUpper(pObject,P1)

	Func uiLanguages 
		pTempObj = new QStringList
		pTempObj.pObject = QLocale_uiLanguages(pObject)
		return pTempObj

	Func weekdays 
		return QLocale_weekdays(pObject)

	Func zeroDigit 
		pTempObj = new QChar
		pTempObj.pObject = QLocale_zeroDigit(pObject)
		return pTempObj

	Func c 
		pTempObj = new QLocale
		pTempObj.pObject = QLocale_c(pObject)
		return pTempObj

	Func countryToString P1
		return QLocale_countryToString(pObject,P1)

	Func languageToString P1
		return QLocale_languageToString(pObject,P1)

	Func matchingLocales P1,P2,P3
		return QLocale_matchingLocales(pObject,P1,P2,P3)

	Func scriptToString P1
		return QLocale_scriptToString(pObject,P1)

	Func setDefault P1
		return QLocale_setDefault(pObject,GetObjectPointerFromRingObject(P1))

	Func system 
		pTempObj = new QLocale
		pTempObj.pObject = QLocale_system(pObject)
		return pTempObj

Class QThread from QObject

	pObject

	Func init P1
		pObject = QThread_new(GetObjectPointerFromRingObject(P1))
		return self

	Func delete
		pObject = QThread_delete(pObject)

	Func ObjectPointer
		return pObject

	Func eventDispatcher 
		return QThread_eventDispatcher(pObject)

	Func exitfromthread P1
		return QThread_exit(pObject,P1)

	Func isFinished 
		return QThread_isFinished(pObject)

	Func isInterruptionRequested 
		return QThread_isInterruptionRequested(pObject)

	Func isRunning 
		return QThread_isRunning(pObject)

	Func priority 
		return QThread_priority(pObject)

	Func requestInterruption 
		return QThread_requestInterruption(pObject)

	Func setEventDispatcher P1
		return QThread_setEventDispatcher(pObject,GetObjectPointerFromRingObject(P1))

	Func setPriority P1
		return QThread_setPriority(pObject,P1)

	Func setStackSize P1
		return QThread_setStackSize(pObject,P1)

	Func stackSize 
		return QThread_stackSize(pObject)

	Func wait P1
		return QThread_wait(pObject,GetObjectPointerFromRingObject(P1))

	Func quit 
		return QThread_quit(pObject)

	Func start P1
		return QThread_start(pObject,P1)

	Func terminate 
		return QThread_terminate(pObject)

	Func currentThread 
		pTempObj = new QThread
		pTempObj.pObject = QThread_currentThread(pObject)
		return pTempObj

	Func currentThreadId 
		return QThread_currentThreadId(pObject)

	Func idealThreadCount 
		return QThread_idealThreadCount(pObject)

	Func msleep P1
		return QThread_msleep(pObject,GetObjectPointerFromRingObject(P1))

	Func sleep P1
		return QThread_sleep(pObject,GetObjectPointerFromRingObject(P1))

	Func usleep P1
		return QThread_usleep(pObject,GetObjectPointerFromRingObject(P1))

	Func yieldCurrentThread 
		return QThread_yieldCurrentThread(pObject)

	Func setStartedEvent P1
		return QThread_setStartedEvent(pObject,P1)

	Func setFinishedEvent P1
		return QThread_setFinishedEvent(pObject,P1)

	Func getStartedEvent 
		return QThread_getStartedEvent(pObject)

	Func getFinishedEvent 
		return QThread_getFinishedEvent(pObject)

Class QThreadPool from QObject

	pObject

	Func init 
		pObject = QThreadPool_new()
		return self

	Func delete
		pObject = QThreadPool_delete(pObject)

	Func ObjectPointer
		return pObject

	Func activeThreadCount 
		return QThreadPool_activeThreadCount(pObject)

	Func clear 
		return QThreadPool_clear(pObject)

	Func expiryTimeout 
		return QThreadPool_expiryTimeout(pObject)

	Func maxThreadCount 
		return QThreadPool_maxThreadCount(pObject)

	Func releaseThread 
		return QThreadPool_releaseThread(pObject)

	Func reserveThread 
		return QThreadPool_reserveThread(pObject)

	Func setExpiryTimeout P1
		return QThreadPool_setExpiryTimeout(pObject,P1)

	Func setMaxThreadCount P1
		return QThreadPool_setMaxThreadCount(pObject,P1)

	Func start P1,P2
		return QThreadPool_start(pObject,GetObjectPointerFromRingObject(P1),P2)

	Func tryStart P1
		return QThreadPool_tryStart(pObject,GetObjectPointerFromRingObject(P1))

	Func waitForDone P1
		return QThreadPool_waitForDone(pObject,P1)

	Func globalInstance 
		pTempObj = new QThreadPool
		pTempObj.pObject = QThreadPool_globalInstance(pObject)
		return pTempObj

Class QProcess from QIODevice

	pObject

	Func init P1
		pObject = QProcess_new(GetObjectPointerFromRingObject(P1))
		return self

	Func delete
		pObject = QProcess_delete(pObject)

	Func ObjectPointer
		return pObject

	Func arguments 
		pTempObj = new QStringList
		pTempObj.pObject = QProcess_arguments(pObject)
		return pTempObj

	Func closeReadChannel P1
		return QProcess_closeReadChannel(pObject,P1)

	Func closeWriteChannel 
		return QProcess_closeWriteChannel(pObject)

	Func error 
		return QProcess_error(pObject)

	Func exitCode 
		return QProcess_exitCode(pObject)

	Func exitStatus 
		return QProcess_exitStatus(pObject)

	Func inputChannelMode 
		return QProcess_inputChannelMode(pObject)

	Func processChannelMode 
		return QProcess_processChannelMode(pObject)

	Func processEnvironment 
		return QProcess_processEnvironment(pObject)

	Func program 
		return QProcess_program(pObject)

	Func readAllStandardError 
		pTempObj = new QByteArray
		pTempObj.pObject = QProcess_readAllStandardError(pObject)
		return pTempObj

	Func readAllStandardOutput 
		pTempObj = new QByteArray
		pTempObj.pObject = QProcess_readAllStandardOutput(pObject)
		return pTempObj

	Func readChannel 
		return QProcess_readChannel(pObject)

	Func setArguments P1
		return QProcess_setArguments(pObject,GetObjectPointerFromRingObject(P1))

	Func setInputChannelMode P1
		return QProcess_setInputChannelMode(pObject,P1)

	Func setProcessChannelMode P1
		return QProcess_setProcessChannelMode(pObject,P1)

	Func setProcessEnvironment P1
		return QProcess_setProcessEnvironment(pObject,GetObjectPointerFromRingObject(P1))

	Func setProgram P1
		return QProcess_setProgram(pObject,P1)

	Func setReadChannel P1
		return QProcess_setReadChannel(pObject,P1)

	Func setStandardErrorFile P1,P2
		return QProcess_setStandardErrorFile(pObject,P1,P2)

	Func setStandardInputFile P1
		return QProcess_setStandardInputFile(pObject,P1)

	Func setStandardOutputFile P1,P2
		return QProcess_setStandardOutputFile(pObject,P1,P2)

	Func setStandardOutputProcess P1
		return QProcess_setStandardOutputProcess(pObject,GetObjectPointerFromRingObject(P1))

	Func setWorkingDirectory P1
		return QProcess_setWorkingDirectory(pObject,P1)

	Func start P1,P2,P3
		return QProcess_start(pObject,P1,GetObjectPointerFromRingObject(P2),P3)

	Func start_3 P1
		return QProcess_start_3(pObject,P1)

	Func state 
		return QProcess_state(pObject)

	Func waitForFinished P1
		return QProcess_waitForFinished(pObject,P1)

	Func waitForStarted P1
		return QProcess_waitForStarted(pObject,P1)

	Func workingDirectory 
		return QProcess_workingDirectory(pObject)

	Func kill 
		return QProcess_kill(pObject)

	Func terminate 
		return QProcess_terminate(pObject)

	Func setreadyReadStandardErrorEvent P1
		return QProcess_setreadyReadStandardErrorEvent(pObject,P1)

	Func setreadyReadStandardOutputEvent P1
		return QProcess_setreadyReadStandardOutputEvent(pObject,P1)

	Func getreadyReadStandardErrorEvent 
		return QProcess_getreadyReadStandardErrorEvent(pObject)

	Func getreadyReadStandardOutputEvent 
		return QProcess_getreadyReadStandardOutputEvent(pObject)

Class QUuid

	pObject

	Func init 
		pObject = QUuid_new()
		return self

	Func delete
		pObject = QUuid_delete(pObject)

	Func ObjectPointer
		return pObject

	Func toString 
		return QUuid_toString(pObject)

Class QMutex

	pObject

	Func init P1
		pObject = QMutex_new(P1)
		return self

	Func delete
		pObject = QMutex_delete(pObject)

	Func ObjectPointer
		return pObject

	Func isRecursive 
		return QMutex_isRecursive(pObject)

	Func lock 
		return QMutex_lock(pObject)

	Func unlock 
		return QMutex_unlock(pObject)

Class QMutexLocker

	pObject

	Func init P1
		pObject = QMutexLocker_new(GetObjectPointerFromRingObject(P1))
		return self

	Func delete
		pObject = QMutexLocker_delete(pObject)

	Func ObjectPointer
		return pObject

	Func mutex 
		pTempObj = new QMutex
		pTempObj.pObject = QMutexLocker_mutex(pObject)
		return pTempObj

	Func relock 
		return QMutexLocker_relock(pObject)

	Func unlock 
		return QMutexLocker_unlock(pObject)

Class QRectF

	pObject

	Func init P1,P2,P3,P4
		pObject = QRectF_new(P1,P2,P3,P4)
		return self

	Func delete
		pObject = QRectF_delete(pObject)

	Func ObjectPointer
		return pObject

	Func adjust P1,P2,P3,P4
		return QRectF_adjust(pObject,P1,P2,P3,P4)

	Func adjusted P1,P2,P3,P4
		pTempObj = new QRectF
		pTempObj.pObject = QRectF_adjusted(pObject,P1,P2,P3,P4)
		return pTempObj

	Func bottom 
		return QRectF_bottom(pObject)

	Func bottomLeft 
		pTempObj = new QPointF
		pTempObj.pObject = QRectF_bottomLeft(pObject)
		return pTempObj

	Func bottomRight 
		pTempObj = new QPointF
		pTempObj.pObject = QRectF_bottomRight(pObject)
		return pTempObj

	Func center 
		pTempObj = new QPointF
		pTempObj.pObject = QRectF_center(pObject)
		return pTempObj

	Func contains P1
		return QRectF_contains(pObject,GetObjectPointerFromRingObject(P1))

	Func contains_2 P1
		return QRectF_contains_2(pObject,GetObjectPointerFromRingObject(P1))

	Func contains_3 P1,P2
		return QRectF_contains_3(pObject,P1,P2)

	Func getCoords P1,P2,P3,P4
		return QRectF_getCoords(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2),GetObjectPointerFromRingObject(P3),GetObjectPointerFromRingObject(P4))

	Func getRect P1,P2,P3,P4
		return QRectF_getRect(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2),GetObjectPointerFromRingObject(P3),GetObjectPointerFromRingObject(P4))

	Func height 
		return QRectF_height(pObject)

	Func intersected P1
		pTempObj = new QRectF
		pTempObj.pObject = QRectF_intersected(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func intersects P1
		return QRectF_intersects(pObject,GetObjectPointerFromRingObject(P1))

	Func isEmpty 
		return QRectF_isEmpty(pObject)

	Func isNull 
		return QRectF_isNull(pObject)

	Func isValid 
		return QRectF_isValid(pObject)

	Func left 
		return QRectF_left(pObject)

	Func marginsAdded P1
		pTempObj = new QRectF
		pTempObj.pObject = QRectF_marginsAdded(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func marginsRemoved P1
		pTempObj = new QRectF
		pTempObj.pObject = QRectF_marginsRemoved(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func moveBottom P1
		return QRectF_moveBottom(pObject,P1)

	Func moveBottomLeft P1
		return QRectF_moveBottomLeft(pObject,GetObjectPointerFromRingObject(P1))

	Func moveBottomRight P1
		return QRectF_moveBottomRight(pObject,GetObjectPointerFromRingObject(P1))

	Func moveCenter P1
		return QRectF_moveCenter(pObject,GetObjectPointerFromRingObject(P1))

	Func moveLeft P1
		return QRectF_moveLeft(pObject,P1)

	Func moveRight P1
		return QRectF_moveRight(pObject,P1)

	Func moveTo P1,P2
		return QRectF_moveTo(pObject,P1,P2)

	Func moveTo_2 P1
		return QRectF_moveTo_2(pObject,GetObjectPointerFromRingObject(P1))

	Func moveTop P1
		return QRectF_moveTop(pObject,P1)

	Func moveTopLeft P1
		return QRectF_moveTopLeft(pObject,GetObjectPointerFromRingObject(P1))

	Func moveTopRight P1
		return QRectF_moveTopRight(pObject,GetObjectPointerFromRingObject(P1))

	Func normalized 
		pTempObj = new QRectF
		pTempObj.pObject = QRectF_normalized(pObject)
		return pTempObj

	Func right 
		return QRectF_right(pObject)

	Func setBottom P1
		return QRectF_setBottom(pObject,P1)

	Func setBottomLeft P1
		return QRectF_setBottomLeft(pObject,GetObjectPointerFromRingObject(P1))

	Func setBottomRight P1
		return QRectF_setBottomRight(pObject,GetObjectPointerFromRingObject(P1))

	Func setCoords P1,P2,P3,P4
		return QRectF_setCoords(pObject,P1,P2,P3,P4)

	Func setHeight P1
		return QRectF_setHeight(pObject,P1)

	Func setLeft P1
		return QRectF_setLeft(pObject,P1)

	Func setRect P1,P2,P3,P4
		return QRectF_setRect(pObject,P1,P2,P3,P4)

	Func setRight P1
		return QRectF_setRight(pObject,P1)

	Func setSize P1
		return QRectF_setSize(pObject,GetObjectPointerFromRingObject(P1))

	Func setTop P1
		return QRectF_setTop(pObject,P1)

	Func setTopLeft P1
		return QRectF_setTopLeft(pObject,GetObjectPointerFromRingObject(P1))

	Func setTopRight P1
		return QRectF_setTopRight(pObject,GetObjectPointerFromRingObject(P1))

	Func setWidth P1
		return QRectF_setWidth(pObject,P1)

	Func setX P1
		return QRectF_setX(pObject,P1)

	Func setY P1
		return QRectF_setY(pObject,P1)

	Func size 
		return QRectF_size(pObject)

	Func toAlignedRect 
		pTempObj = new QRect
		pTempObj.pObject = QRectF_toAlignedRect(pObject)
		return pTempObj

	Func toRect 
		pTempObj = new QRect
		pTempObj.pObject = QRectF_toRect(pObject)
		return pTempObj

	Func top 
		return QRectF_top(pObject)

	Func topLeft 
		pTempObj = new QPointF
		pTempObj.pObject = QRectF_topLeft(pObject)
		return pTempObj

	Func topRight 
		pTempObj = new QPointF
		pTempObj.pObject = QRectF_topRight(pObject)
		return pTempObj

	Func translate P1,P2
		return QRectF_translate(pObject,P1,P2)

	Func translate_2 P1
		return QRectF_translate_2(pObject,GetObjectPointerFromRingObject(P1))

	Func translated P1,P2
		pTempObj = new QRectF
		pTempObj.pObject = QRectF_translated(pObject,P1,P2)
		return pTempObj

	Func translated_2 P1
		pTempObj = new QRectF
		pTempObj.pObject = QRectF_translated_2(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func transposed 
		pTempObj = new QRectF
		pTempObj.pObject = QRectF_transposed(pObject)
		return pTempObj

	Func united P1
		pTempObj = new QRectF
		pTempObj.pObject = QRectF_united(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func width 
		return QRectF_width(pObject)

	Func x 
		return QRectF_x(pObject)

	Func y 
		return QRectF_y(pObject)

Class QLineF

	pObject

	Func init P1,P2,P3,P4
		pObject = QLineF_new(P1,P2,P3,P4)
		return self

	Func delete
		pObject = QLineF_delete(pObject)

	Func ObjectPointer
		return pObject

	Func p1 
		pTempObj = new QPointF
		pTempObj.pObject = QLineF_p1(pObject)
		return pTempObj

	Func p2 
		pTempObj = new QPointF
		pTempObj.pObject = QLineF_p2(pObject)
		return pTempObj

	Func x1 
		return QLineF_x1(pObject)

	Func x2 
		return QLineF_x2(pObject)

	Func y1 
		return QLineF_y1(pObject)

	Func y2 
		return QLineF_y2(pObject)

	Func angle 
		return QLineF_angle(pObject)

	Func angleTo P1
		return QLineF_angleTo(pObject,GetObjectPointerFromRingObject(P1))

	Func center 
		pTempObj = new QPointF
		pTempObj.pObject = QLineF_center(pObject)
		return pTempObj

	Func dx 
		return QLineF_dx(pObject)

	Func dy 
		return QLineF_dy(pObject)

	Func intersects P1,P2
		return QLineF_intersects(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2))

	Func isNull 
		return QLineF_isNull(pObject)

	Func length 
		return QLineF_length(pObject)

	Func normalVector 
		pTempObj = new QLineF
		pTempObj.pObject = QLineF_normalVector(pObject)
		return pTempObj

	Func pointAt P1
		pTempObj = new QPointF
		pTempObj.pObject = QLineF_pointAt(pObject,P1)
		return pTempObj

	Func setP1 P1
		return QLineF_setP1(pObject,GetObjectPointerFromRingObject(P1))

	Func setP2 P1
		return QLineF_setP2(pObject,GetObjectPointerFromRingObject(P1))

	Func setAngle P1
		return QLineF_setAngle(pObject,P1)

	Func setLength P1
		return QLineF_setLength(pObject,P1)

	Func setLine P1,P2,P3,P4
		return QLineF_setLine(pObject,P1,P2,P3,P4)

	Func setPoints P1,P2
		return QLineF_setPoints(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2))

	Func toLine 
		return QLineF_toLine(pObject)

	Func translate P1
		return QLineF_translate(pObject,GetObjectPointerFromRingObject(P1))

	Func translate_2 P1,P2
		return QLineF_translate_2(pObject,P1,P2)

	Func translated P1
		pTempObj = new QLineF
		pTempObj.pObject = QLineF_translated(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func translated_2 P1,P2
		pTempObj = new QLineF
		pTempObj.pObject = QLineF_translated_2(pObject,P1,P2)
		return pTempObj

Class QRegExp

	pObject

	Func init 
		pObject = QRegExp_new()
		return self

	Func delete
		pObject = QRegExp_delete(pObject)

	Func ObjectPointer
		return pObject

	Func cap P1
		return QRegExp_cap(pObject,P1)

	Func captureCount 
		return QRegExp_captureCount(pObject)

	Func capturedTexts 
		pTempObj = new QStringList
		pTempObj.pObject = QRegExp_capturedTexts(pObject)
		return pTempObj

	Func caseSensitivity 
		return QRegExp_caseSensitivity(pObject)

	Func errorString 
		return QRegExp_errorString(pObject)

	Func exactMatch P1
		return QRegExp_exactMatch(pObject,P1)

	Func indexIn P1,P2,P3
		return QRegExp_indexIn(pObject,P1,P2,P3)

	Func isEmpty 
		return QRegExp_isEmpty(pObject)

	Func isMinimal 
		return QRegExp_isMinimal(pObject)

	Func isValid 
		return QRegExp_isValid(pObject)

	Func lastIndexIn P1,P2,P3
		return QRegExp_lastIndexIn(pObject,P1,P2,P3)

	Func matchedLength 
		return QRegExp_matchedLength(pObject)

	Func pattern 
		return QRegExp_pattern(pObject)

	Func patternSyntax 
		return QRegExp_patternSyntax(pObject)

	Func pos P1
		return QRegExp_pos(pObject,P1)

	Func setCaseSensitivity P1
		return QRegExp_setCaseSensitivity(pObject,P1)

	Func setMinimal P1
		return QRegExp_setMinimal(pObject,P1)

	Func setPattern P1
		return QRegExp_setPattern(pObject,P1)

	Func setPatternSyntax P1
		return QRegExp_setPatternSyntax(pObject,P1)

	Func swap P1
		return QRegExp_swap(pObject,GetObjectPointerFromRingObject(P1))

Class QModelIndex

	pObject

	Func init 
		pObject = QModelIndex_new()
		return self

	Func delete
		pObject = QModelIndex_delete(pObject)

	Func ObjectPointer
		return pObject

	Func column 
		return QModelIndex_column(pObject)

	Func data P1
		pTempObj = new QVariant
		pTempObj.pObject = QModelIndex_data(pObject,P1)
		return pTempObj

	Func flags 
		return QModelIndex_flags(pObject)

	Func internalId 
		return QModelIndex_internalId(pObject)

	Func internalPointer 
		return QModelIndex_internalPointer(pObject)

	Func isValid 
		return QModelIndex_isValid(pObject)

	Func model 
		return QModelIndex_model(pObject)

	Func parent 
		pTempObj = new QModelIndex
		pTempObj.pObject = QModelIndex_parent(pObject)
		return pTempObj

	Func row 
		return QModelIndex_row(pObject)

	Func sibling P1,P2
		pTempObj = new QModelIndex
		pTempObj.pObject = QModelIndex_sibling(pObject,P1,P2)
		return pTempObj

	Func siblingAtColumn P1
		pTempObj = new QModelIndex
		pTempObj.pObject = QModelIndex_siblingAtColumn(pObject,P1)
		return pTempObj

	Func siblingAtRow P1
		pTempObj = new QModelIndex
		pTempObj.pObject = QModelIndex_siblingAtRow(pObject,P1)
		return pTempObj

Class QVersionNumber

	pObject

	Func init 
		pObject = QVersionNumber_new()
		return self

	Func delete
		pObject = QVersionNumber_delete(pObject)

	Func ObjectPointer
		return pObject

	Func isNormalized 
		return QVersionNumber_isNormalized(pObject)

	Func isNull 
		return QVersionNumber_isNull(pObject)

	Func isPrefixOf P1
		return QVersionNumber_isPrefixOf(pObject,GetObjectPointerFromRingObject(P1))

	Func majorVersion 
		return QVersionNumber_majorVersion(pObject)

	Func microVersion 
		return QVersionNumber_microVersion(pObject)

	Func minorVersion 
		return QVersionNumber_minorVersion(pObject)

	Func normalized 
		pTempObj = new QVersionNumber
		pTempObj.pObject = QVersionNumber_normalized(pObject)
		return pTempObj

	Func segmentAt P1
		return QVersionNumber_segmentAt(pObject,P1)

	Func segmentCount 
		return QVersionNumber_segmentCount(pObject)

	Func segments 
		return QVersionNumber_segments(pObject)

	Func toString 
		return QVersionNumber_toString(pObject)

Class QLibraryInfo

	pObject


	Func isDebugBuild 
		return QLibraryInfo_isDebugBuild()

	Func version 
		pTempObj = new QVersionNumber
		pTempObj.pObject = QLibraryInfo_version()
		return pTempObj

Class QDesktopServices

	pObject


	Func openUrl P1
		return QDesktopServices_openUrl(GetObjectPointerFromRingObject(P1))

	Func setUrlHandler P1,P2,P3
		return QDesktopServices_setUrlHandler(P1,GetObjectPointerFromRingObject(P2),P3)

	Func unsetUrlHandler P1
		return QDesktopServices_unsetUrlHandler(P1)

Class QBitmap from QPixmap

	pObject

	Func init 
		pObject = QBitmap_new()
		return self

	Func delete
		pObject = QBitmap_delete(pObject)

	Func ObjectPointer
		return pObject

	Func clear 
		return QBitmap_clear(pObject)

	Func swap P1
		return QBitmap_swap(pObject,GetObjectPointerFromRingObject(P1))

	Func transformed P1
		pTempObj = new QBitmap
		pTempObj.pObject = QBitmap_transformed(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func fromData P1,P2,P3
		pTempObj = new QBitmap
		pTempObj.pObject = QBitmap_fromData(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2),P3)
		return pTempObj

	Func fromImage P1,P2
		pTempObj = new QBitmap
		pTempObj.pObject = QBitmap_fromImage(pObject,GetObjectPointerFromRingObject(P1),P2)
		return pTempObj

Class QPixmap

	pObject

	Func init P1
		pObject = QPixmap_new(P1)
		return self

	Func delete
		pObject = QPixmap_delete(pObject)

	Func ObjectPointer
		return pObject

	Func transformed P1,P2
		pTempObj = new QPixmap
		pTempObj.pObject = QPixmap_transformed(pObject,GetObjectPointerFromRingObject(P1),P2)
		return pTempObj

	Func copy P1,P2,P3,P4
		pTempObj = new QPixmap
		pTempObj.pObject = QPixmap_copy(pObject,P1,P2,P3,P4)
		return pTempObj

	Func scaled P1,P2,P3,P4
		pTempObj = new QPixmap
		pTempObj.pObject = QPixmap_scaled(pObject,P1,P2,P3,P4)
		return pTempObj

	Func width 
		return QPixmap_width(pObject)

	Func height 
		return QPixmap_height(pObject)

	Func createMaskFromColor P1,P2
		pTempObj = new QBitmap
		pTempObj.pObject = QPixmap_createMaskFromColor(pObject,GetObjectPointerFromRingObject(P1),P2)
		return pTempObj

	Func mask 
		pTempObj = new QBitmap
		pTempObj.pObject = QPixmap_mask(pObject)
		return pTempObj

	Func setMask P1
		return QPixmap_setMask(pObject,GetObjectPointerFromRingObject(P1))

	Func fill P1
		return QPixmap_fill(pObject,GetObjectPointerFromRingObject(P1))

	Func fromImage P1,P2
		pTempObj = new QPixmap
		pTempObj.pObject = QPixmap_fromImage(pObject,GetObjectPointerFromRingObject(P1),P2)
		return pTempObj

	Func loadpixmap P1,P2,P3
		return QPixmap_load(pObject,P1,P2,P3)

	Func cacheKey 
		return QPixmap_cacheKey(pObject)

	Func convertFromImage P1,P2
		return QPixmap_convertFromImage(pObject,GetObjectPointerFromRingObject(P1),P2)

	Func copy_2 P1
		pTempObj = new QPixmap
		pTempObj.pObject = QPixmap_copy_2(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func createHeuristicMask P1
		pTempObj = new QBitmap
		pTempObj.pObject = QPixmap_createHeuristicMask(pObject,P1)
		return pTempObj

	Func depth 
		return QPixmap_depth(pObject)

	Func detach 
		return QPixmap_detach(pObject)

	Func devicePixelRatio 
		return QPixmap_devicePixelRatio(pObject)

	Func hasAlpha 
		return QPixmap_hasAlpha(pObject)

	Func hasAlphaChannel 
		return QPixmap_hasAlphaChannel(pObject)

	Func isNull 
		return QPixmap_isNull(pObject)

	Func isQBitmap 
		return QPixmap_isQBitmap(pObject)

	Func loadFromData P1,P2,P3,P4
		return QPixmap_loadFromData(pObject,GetObjectPointerFromRingObject(P1),P2,P3,P4)

	Func loadFromData_2 P1,P2,P3
		return QPixmap_loadFromData_2(pObject,GetObjectPointerFromRingObject(P1),P2,P3)

	Func rect 
		pTempObj = new QRect
		pTempObj.pObject = QPixmap_rect(pObject)
		return pTempObj

	Func save P1,P2,P3
		return QPixmap_save(pObject,P1,P2,P3)

	Func save_2 P1,P2,P3
		return QPixmap_save_2(pObject,GetObjectPointerFromRingObject(P1),P2,P3)

	Func scaled_2 P1,P2,P3
		pTempObj = new QPixmap
		pTempObj.pObject = QPixmap_scaled_2(pObject,GetObjectPointerFromRingObject(P1),P2,P3)
		return pTempObj

	Func scaledToHeight P1,P2
		pTempObj = new QPixmap
		pTempObj.pObject = QPixmap_scaledToHeight(pObject,P1,P2)
		return pTempObj

	Func scaledToWidth P1,P2
		pTempObj = new QPixmap
		pTempObj.pObject = QPixmap_scaledToWidth(pObject,P1,P2)
		return pTempObj

	Func scroll P1,P2,P3,P4,P5,P6,P7
		return QPixmap_scroll(pObject,P1,P2,P3,P4,P5,P6,GetObjectPointerFromRingObject(P7))

	Func scroll_2 P1,P2,P3,P4
		return QPixmap_scroll_2(pObject,P1,P2,GetObjectPointerFromRingObject(P3),GetObjectPointerFromRingObject(P4))

	Func setDevicePixelRatio P1
		return QPixmap_setDevicePixelRatio(pObject,P1)

	Func size 
		pTempObj = new QSize
		pTempObj.pObject = QPixmap_size(pObject)
		return pTempObj

	Func swap P1
		return QPixmap_swap(pObject,GetObjectPointerFromRingObject(P1))

	Func toImage 
		pTempObj = new QImage
		pTempObj.pObject = QPixmap_toImage(pObject)
		return pTempObj

	Func transformed_2 P1,P2
		pTempObj = new QPixmap
		pTempObj.pObject = QPixmap_transformed_2(pObject,GetObjectPointerFromRingObject(P1),P2)
		return pTempObj

	Func defaultDepth 
		return QPixmap_defaultDepth(pObject)

	Func fromImage_2 P1,P2
		pTempObj = new QPixmap
		pTempObj.pObject = QPixmap_fromImage_2(pObject,GetObjectPointerFromRingObject(P1),P2)
		return pTempObj

	Func fromImageReader P1,P2
		pTempObj = new QPixmap
		pTempObj.pObject = QPixmap_fromImageReader(pObject,GetObjectPointerFromRingObject(P1),P2)
		return pTempObj

	Func trueMatrix P1,P2,P3
		return QPixmap_trueMatrix(pObject,GetObjectPointerFromRingObject(P1),P2,P3)

Class QPainter

	pObject

	Func init 
		pObject = QPainter_new()
		return self

	Func delete
		pObject = QPainter_delete(pObject)

	Func ObjectPointer
		return pObject

	Func background 
		pTempObj = new QBrush
		pTempObj.pObject = QPainter_background(pObject)
		return pTempObj

	Func backgroundMode 
		return QPainter_backgroundMode(pObject)

	Func begin P1
		return QPainter_begin(pObject,GetObjectPointerFromRingObject(P1))

	Func beginNativePainting 
		return QPainter_beginNativePainting(pObject)

	Func boundingRect P1,P2,P3,P4,P5,P6
		pTempObj = new QRect
		pTempObj.pObject = QPainter_boundingRect(pObject,P1,P2,P3,P4,P5,P6)
		return pTempObj

	Func brush 
		pTempObj = new QBrush
		pTempObj.pObject = QPainter_brush(pObject)
		return pTempObj

	Func brushOrigin 
		pTempObj = new QPoint
		pTempObj.pObject = QPainter_brushOrigin(pObject)
		return pTempObj

	Func clipBoundingRect 
		pTempObj = new QRectF
		pTempObj.pObject = QPainter_clipBoundingRect(pObject)
		return pTempObj

	Func clipPath 
		pTempObj = new QPainterPath
		pTempObj.pObject = QPainter_clipPath(pObject)
		return pTempObj

	Func clipRegion 
		pTempObj = new QRegion
		pTempObj.pObject = QPainter_clipRegion(pObject)
		return pTempObj

	Func combinedTransform 
		return QPainter_combinedTransform(pObject)

	Func compositionMode 
		return QPainter_compositionMode(pObject)

	Func device 
		return QPainter_device(pObject)

	Func deviceTransform 
		return QPainter_deviceTransform(pObject)

	Func drawArc P1,P2,P3,P4,P5,P6
		return QPainter_drawArc(pObject,P1,P2,P3,P4,P5,P6)

	Func drawChord P1,P2,P3,P4,P5,P6
		return QPainter_drawChord(pObject,P1,P2,P3,P4,P5,P6)

	Func drawEllipse P1,P2,P3,P4
		return QPainter_drawEllipse(pObject,P1,P2,P3,P4)

	Func drawGlyphRun P1,P2
		return QPainter_drawGlyphRun(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2))

	Func drawImage P1,P2,P3
		return QPainter_drawImage(pObject,P1,P2,GetObjectPointerFromRingObject(P3))

	Func drawLine P1,P2,P3,P4
		return QPainter_drawLine(pObject,P1,P2,P3,P4)

	Func drawLines P1,P2
		return QPainter_drawLines(pObject,GetObjectPointerFromRingObject(P1),P2)

	Func drawPath P1
		return QPainter_drawPath(pObject,GetObjectPointerFromRingObject(P1))

	Func drawPicture P1,P2,P3
		return QPainter_drawPicture(pObject,P1,P2,GetObjectPointerFromRingObject(P3))

	Func drawPie P1,P2,P3,P4,P5,P6
		return QPainter_drawPie(pObject,P1,P2,P3,P4,P5,P6)

	Func drawPixmap P1,P2,P3
		return QPainter_drawPixmap(pObject,P1,P2,GetObjectPointerFromRingObject(P3))

	Func drawPoint P1,P2
		return QPainter_drawPoint(pObject,P1,P2)

	Func drawRect P1,P2,P3,P4
		return QPainter_drawRect(pObject,P1,P2,P3,P4)

	Func drawRects P1,P2
		return QPainter_drawRects(pObject,GetObjectPointerFromRingObject(P1),P2)

	Func drawRoundedRect P1,P2,P3,P4,P5,P6,P7
		return QPainter_drawRoundedRect(pObject,P1,P2,P3,P4,P5,P6,P7)

	Func drawStaticText P1,P2,P3
		return QPainter_drawStaticText(pObject,P1,P2,GetObjectPointerFromRingObject(P3))

	Func drawText P1,P2,P3
		return QPainter_drawText(pObject,P1,P2,P3)

	Func drawTiledPixmap P1,P2,P3,P4,P5,P6,P7
		return QPainter_drawTiledPixmap(pObject,P1,P2,P3,P4,GetObjectPointerFromRingObject(P5),P6,P7)

	Func endpaint 
		return QPainter_end(pObject)

	Func endNativePainting 
		return QPainter_endNativePainting(pObject)

	Func eraseRect P1,P2,P3,P4
		return QPainter_eraseRect(pObject,P1,P2,P3,P4)

	Func fillPath P1,P2
		return QPainter_fillPath(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2))

	Func fillRect P1,P2,P3,P4,P5
		return QPainter_fillRect(pObject,P1,P2,P3,P4,GetObjectPointerFromRingObject(P5))

	Func font 
		pTempObj = new QFont
		pTempObj.pObject = QPainter_font(pObject)
		return pTempObj

	Func fontInfo 
		return QPainter_fontInfo(pObject)

	Func hasClipping 
		return QPainter_hasClipping(pObject)

	Func isActive 
		return QPainter_isActive(pObject)

	Func layoutDirection 
		return QPainter_layoutDirection(pObject)

	Func opacity 
		return QPainter_opacity(pObject)

	Func paintEngine 
		return QPainter_paintEngine(pObject)

	Func pen 
		pTempObj = new QPen
		pTempObj.pObject = QPainter_pen(pObject)
		return pTempObj

	Func renderHints 
		return QPainter_renderHints(pObject)

	Func resetTransform 
		return QPainter_resetTransform(pObject)

	Func restore 
		return QPainter_restore(pObject)

	Func rotate P1
		return QPainter_rotate(pObject,P1)

	Func save 
		return QPainter_save(pObject)

	Func scale P1,P2
		return QPainter_scale(pObject,P1,P2)

	Func setBackground P1
		return QPainter_setBackground(pObject,GetObjectPointerFromRingObject(P1))

	Func setBackgroundMode P1
		return QPainter_setBackgroundMode(pObject,P1)

	Func setBrush P1
		return QPainter_setBrush(pObject,GetObjectPointerFromRingObject(P1))

	Func setBrushOrigin P1,P2
		return QPainter_setBrushOrigin(pObject,P1,P2)

	Func setClipPath P1,P2
		return QPainter_setClipPath(pObject,GetObjectPointerFromRingObject(P1),P2)

	Func setClipRect P1,P2,P3,P4,P5
		return QPainter_setClipRect(pObject,P1,P2,P3,P4,P5)

	Func setClipRegion P1,P2
		return QPainter_setClipRegion(pObject,GetObjectPointerFromRingObject(P1),P2)

	Func setClipping P1
		return QPainter_setClipping(pObject,P1)

	Func setCompositionMode P1
		return QPainter_setCompositionMode(pObject,P1)

	Func setFont P1
		return QPainter_setFont(pObject,GetObjectPointerFromRingObject(P1))

	Func setLayoutDirection P1
		return QPainter_setLayoutDirection(pObject,P1)

	Func setOpacity P1
		return QPainter_setOpacity(pObject,P1)

	Func setPen P1
		return QPainter_setPen(pObject,GetObjectPointerFromRingObject(P1))

	Func setRenderHint P1,P2
		return QPainter_setRenderHint(pObject,P1,P2)

	Func setTransform P1,P2
		return QPainter_setTransform(pObject,GetObjectPointerFromRingObject(P1),P2)

	Func setViewTransformEnabled P1
		return QPainter_setViewTransformEnabled(pObject,P1)

	Func setViewport P1,P2,P3,P4
		return QPainter_setViewport(pObject,P1,P2,P3,P4)

	Func setWindow P1,P2,P3,P4
		return QPainter_setWindow(pObject,P1,P2,P3,P4)

	Func setWorldMatrixEnabled P1
		return QPainter_setWorldMatrixEnabled(pObject,P1)

	Func setWorldTransform P1,P2
		return QPainter_setWorldTransform(pObject,GetObjectPointerFromRingObject(P1),P2)

	Func shear P1,P2
		return QPainter_shear(pObject,P1,P2)

	Func strokePath P1,P2
		return QPainter_strokePath(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2))

	Func testRenderHint P1
		return QPainter_testRenderHint(pObject,P1)

	Func transform 
		return QPainter_transform(pObject)

	Func translate P1,P2
		return QPainter_translate(pObject,P1,P2)

	Func viewTransformEnabled 
		return QPainter_viewTransformEnabled(pObject)

	Func viewport 
		pTempObj = new QRect
		pTempObj.pObject = QPainter_viewport(pObject)
		return pTempObj

	Func window 
		pTempObj = new QRect
		pTempObj.pObject = QPainter_window(pObject)
		return pTempObj

	Func worldMatrixEnabled 
		return QPainter_worldMatrixEnabled(pObject)

	Func worldTransform 
		return QPainter_worldTransform(pObject)

	Func drawPolygon P1,P2
		return QPainter_drawPolygon(pObject,GetObjectPointerFromRingObject(P1),P2)

	Func drawConvexPolygon P1
		return QPainter_drawConvexPolygon(pObject,GetObjectPointerFromRingObject(P1))

	Func drawPoints P1
		return QPainter_drawPoints(pObject,GetObjectPointerFromRingObject(P1))

	Func drawPolyline P1
		return QPainter_drawPolyline(pObject,GetObjectPointerFromRingObject(P1))

	Func drawHSVFList P1
		return QPainter_drawHSVFList(pObject,GetObjectPointerFromRingObject(P1))

	Func drawRGBFList P1
		return QPainter_drawRGBFList(pObject,GetObjectPointerFromRingObject(P1))

	Func drawHSVFListAtXY P1,P2,P3
		return QPainter_drawHSVFListAtXY(pObject,GetObjectPointerFromRingObject(P1),P2,P3)

	Func drawRGBFListAtXY P1,P2,P3
		return QPainter_drawRGBFListAtXY(pObject,GetObjectPointerFromRingObject(P1),P2,P3)

	Func drawBytes P1,P2,P3,P4,P5,P6
		return QPainter_drawBytes(pObject,P1,P2,P3,P4,P5,P6)

Class QPicture

	pObject

	Func init 
		pObject = QPicture_new()
		return self

	Func delete
		pObject = QPicture_delete(pObject)

	Func ObjectPointer
		return pObject

	Func boundingRect 
		pTempObj = new QRect
		pTempObj.pObject = QPicture_boundingRect(pObject)
		return pTempObj

	Func data 
		return QPicture_data(pObject)

	Func isNull 
		return QPicture_isNull(pObject)

	Func loadfile P1,P2
		return QPicture_load(pObject,P1,P2)

	Func play P1
		return QPicture_play(pObject,GetObjectPointerFromRingObject(P1))

	Func save P1,P2
		return QPicture_save(pObject,P1,P2)

	Func setBoundingRect P1
		return QPicture_setBoundingRect(pObject,GetObjectPointerFromRingObject(P1))

	Func size 
		return QPicture_size(pObject)

	Func swap P1
		return QPicture_swap(pObject,GetObjectPointerFromRingObject(P1))

Class QPen

	pObject

	Func init 
		pObject = QPen_new()
		return self

	Func delete
		pObject = QPen_delete(pObject)

	Func ObjectPointer
		return pObject

	Func brush 
		pTempObj = new QBrush
		pTempObj.pObject = QPen_brush(pObject)
		return pTempObj

	Func capStyle 
		return QPen_capStyle(pObject)

	Func color 
		pTempObj = new QColor
		pTempObj.pObject = QPen_color(pObject)
		return pTempObj

	Func dashOffset 
		return QPen_dashOffset(pObject)

	Func isCosmetic 
		return QPen_isCosmetic(pObject)

	Func isSolid 
		return QPen_isSolid(pObject)

	Func joinStyle 
		return QPen_joinStyle(pObject)

	Func miterLimit 
		return QPen_miterLimit(pObject)

	Func setBrush P1
		return QPen_setBrush(pObject,GetObjectPointerFromRingObject(P1))

	Func setCapStyle P1
		return QPen_setCapStyle(pObject,P1)

	Func setColor P1
		return QPen_setColor(pObject,GetObjectPointerFromRingObject(P1))

	Func setCosmetic P1
		return QPen_setCosmetic(pObject,P1)

	Func setDashOffset P1
		return QPen_setDashOffset(pObject,P1)

	Func setJoinStyle P1
		return QPen_setJoinStyle(pObject,P1)

	Func setMiterLimit P1
		return QPen_setMiterLimit(pObject,P1)

	Func setStyle P1
		return QPen_setStyle(pObject,P1)

	Func setWidth P1
		return QPen_setWidth(pObject,P1)

	Func setWidthF P1
		return QPen_setWidthF(pObject,P1)

	Func style 
		return QPen_style(pObject)

	Func swap P1
		return QPen_swap(pObject,GetObjectPointerFromRingObject(P1))

	Func width 
		return QPen_width(pObject)

	Func widthF 
		return QPen_widthF(pObject)

Class QColor

	pObject

	Func init 
		pObject = QColor_new()
		return self

	Func delete
		pObject = QColor_delete(pObject)

	Func ObjectPointer
		return pObject

	Func alpha 
		return QColor_alpha(pObject)

	Func alphaF 
		return QColor_alphaF(pObject)

	Func black 
		return QColor_black(pObject)

	Func blackF 
		return QColor_blackF(pObject)

	Func blue 
		return QColor_blue(pObject)

	Func blueF 
		return QColor_blueF(pObject)

	Func convertTo P1
		pTempObj = new QColor
		pTempObj.pObject = QColor_convertTo(pObject,P1)
		return pTempObj

	Func cyan 
		return QColor_cyan(pObject)

	Func cyanF 
		return QColor_cyanF(pObject)

	Func darker P1
		pTempObj = new QColor
		pTempObj.pObject = QColor_darker(pObject,P1)
		return pTempObj

	Func getCmyk P1,P2,P3,P4,P5
		return QColor_getCmyk(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2),GetObjectPointerFromRingObject(P3),GetObjectPointerFromRingObject(P4),GetObjectPointerFromRingObject(P5))

	Func getCmykF P1,P2,P3,P4,P5
		return QColor_getCmykF(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2),GetObjectPointerFromRingObject(P3),GetObjectPointerFromRingObject(P4),GetObjectPointerFromRingObject(P5))

	Func getHsl P1,P2,P3,P4
		return QColor_getHsl(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2),GetObjectPointerFromRingObject(P3),GetObjectPointerFromRingObject(P4))

	Func getHslF P1,P2,P3,P4
		return QColor_getHslF(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2),GetObjectPointerFromRingObject(P3),GetObjectPointerFromRingObject(P4))

	Func getHsv P1,P2,P3,P4
		return QColor_getHsv(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2),GetObjectPointerFromRingObject(P3),GetObjectPointerFromRingObject(P4))

	Func getHsvF P1,P2,P3,P4
		return QColor_getHsvF(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2),GetObjectPointerFromRingObject(P3),GetObjectPointerFromRingObject(P4))

	Func getRgb P1,P2,P3,P4
		return QColor_getRgb(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2),GetObjectPointerFromRingObject(P3),GetObjectPointerFromRingObject(P4))

	Func getRgbF P1,P2,P3,P4
		return QColor_getRgbF(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2),GetObjectPointerFromRingObject(P3),GetObjectPointerFromRingObject(P4))

	Func green 
		return QColor_green(pObject)

	Func greenF 
		return QColor_greenF(pObject)

	Func hslHue 
		return QColor_hslHue(pObject)

	Func hslHueF 
		return QColor_hslHueF(pObject)

	Func hslSaturation 
		return QColor_hslSaturation(pObject)

	Func hslSaturationF 
		return QColor_hslSaturationF(pObject)

	Func hsvHue 
		return QColor_hsvHue(pObject)

	Func hsvHueF 
		return QColor_hsvHueF(pObject)

	Func hsvSaturation 
		return QColor_hsvSaturation(pObject)

	Func hsvSaturationF 
		return QColor_hsvSaturationF(pObject)

	Func hue 
		return QColor_hue(pObject)

	Func hueF 
		return QColor_hueF(pObject)

	Func isValid 
		return QColor_isValid(pObject)

	Func lighter P1
		pTempObj = new QColor
		pTempObj.pObject = QColor_lighter(pObject,P1)
		return pTempObj

	Func lightness 
		return QColor_lightness(pObject)

	Func lightnessF 
		return QColor_lightnessF(pObject)

	Func magenta 
		return QColor_magenta(pObject)

	Func magentaF 
		return QColor_magentaF(pObject)

	Func name 
		return QColor_name(pObject)

	Func red 
		return QColor_red(pObject)

	Func redF 
		return QColor_redF(pObject)

	Func rgb 
		return QColor_rgb(pObject)

	Func rgba 
		return QColor_rgba(pObject)

	Func saturation 
		return QColor_saturation(pObject)

	Func saturationF 
		return QColor_saturationF(pObject)

	Func setAlpha P1
		return QColor_setAlpha(pObject,P1)

	Func setAlphaF P1
		return QColor_setAlphaF(pObject,P1)

	Func setBlue P1
		return QColor_setBlue(pObject,P1)

	Func setBlueF P1
		return QColor_setBlueF(pObject,P1)

	Func setCmyk P1,P2,P3,P4,P5
		return QColor_setCmyk(pObject,P1,P2,P3,P4,P5)

	Func setCmykF P1,P2,P3,P4,P5
		return QColor_setCmykF(pObject,P1,P2,P3,P4,P5)

	Func setGreen P1
		return QColor_setGreen(pObject,P1)

	Func setGreenF P1
		return QColor_setGreenF(pObject,P1)

	Func setHsl P1,P2,P3,P4
		return QColor_setHsl(pObject,P1,P2,P3,P4)

	Func setHslF P1,P2,P3,P4
		return QColor_setHslF(pObject,P1,P2,P3,P4)

	Func setHsv P1,P2,P3,P4
		return QColor_setHsv(pObject,P1,P2,P3,P4)

	Func setHsvF P1,P2,P3,P4
		return QColor_setHsvF(pObject,P1,P2,P3,P4)

	Func setNamedColor P1
		return QColor_setNamedColor(pObject,P1)

	Func setRed P1
		return QColor_setRed(pObject,P1)

	Func setRedF P1
		return QColor_setRedF(pObject,P1)

	Func setRgb P1,P2,P3,P4
		return QColor_setRgb(pObject,P1,P2,P3,P4)

	Func setRgbF P1,P2,P3,P4
		return QColor_setRgbF(pObject,P1,P2,P3,P4)

	Func setRgba P1
		return QColor_setRgba(pObject,GetObjectPointerFromRingObject(P1))

	Func spec 
		return QColor_spec(pObject)

	Func toCmyk 
		pTempObj = new QColor
		pTempObj.pObject = QColor_toCmyk(pObject)
		return pTempObj

	Func toHsl 
		pTempObj = new QColor
		pTempObj.pObject = QColor_toHsl(pObject)
		return pTempObj

	Func toHsv 
		pTempObj = new QColor
		pTempObj.pObject = QColor_toHsv(pObject)
		return pTempObj

	Func toRgb 
		pTempObj = new QColor
		pTempObj.pObject = QColor_toRgb(pObject)
		return pTempObj

	Func value 
		return QColor_value(pObject)

	Func valueF 
		return QColor_valueF(pObject)

	Func yellow 
		return QColor_yellow(pObject)

	Func yellowF 
		return QColor_yellowF(pObject)

	Func colorNames 
		pTempObj = new QStringList
		pTempObj.pObject = QColor_colorNames(pObject)
		return pTempObj

	Func fromCmyk P1,P2,P3,P4,P5
		pTempObj = new QColor
		pTempObj.pObject = QColor_fromCmyk(pObject,P1,P2,P3,P4,P5)
		return pTempObj

	Func fromCmykF P1,P2,P3,P4,P5
		pTempObj = new QColor
		pTempObj.pObject = QColor_fromCmykF(pObject,P1,P2,P3,P4,P5)
		return pTempObj

	Func fromHsl P1,P2,P3,P4
		pTempObj = new QColor
		pTempObj.pObject = QColor_fromHsl(pObject,P1,P2,P3,P4)
		return pTempObj

	Func fromHslF P1,P2,P3,P4
		pTempObj = new QColor
		pTempObj.pObject = QColor_fromHslF(pObject,P1,P2,P3,P4)
		return pTempObj

	Func fromHsv P1,P2,P3,P4
		pTempObj = new QColor
		pTempObj.pObject = QColor_fromHsv(pObject,P1,P2,P3,P4)
		return pTempObj

	Func fromHsvF P1,P2,P3,P4
		pTempObj = new QColor
		pTempObj.pObject = QColor_fromHsvF(pObject,P1,P2,P3,P4)
		return pTempObj

	Func fromRgb P1,P2,P3,P4
		pTempObj = new QColor
		pTempObj.pObject = QColor_fromRgb(pObject,P1,P2,P3,P4)
		return pTempObj

	Func fromRgbF P1,P2,P3,P4
		pTempObj = new QColor
		pTempObj.pObject = QColor_fromRgbF(pObject,P1,P2,P3,P4)
		return pTempObj

	Func fromRgba P1
		pTempObj = new QColor
		pTempObj.pObject = QColor_fromRgba(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func isValidColor P1
		return QColor_isValidColor(pObject,P1)

Class QFont

	pObject

	Func init P1,P2,P3,P4
		pObject = QFont_new(P1,P2,P3,P4)
		return self

	Func delete
		pObject = QFont_delete(pObject)

	Func ObjectPointer
		return pObject

	Func bold 
		return QFont_bold(pObject)

	Func capitalization 
		return QFont_capitalization(pObject)

	Func defaultFamily 
		return QFont_defaultFamily(pObject)

	Func exactMatch 
		return QFont_exactMatch(pObject)

	Func family 
		return QFont_family(pObject)

	Func fixedPitch 
		return QFont_fixedPitch(pObject)

	Func fromString P1
		return QFont_fromString(pObject,P1)

	Func hintingPreference 
		return QFont_hintingPreference(pObject)

	Func isCopyOf P1
		return QFont_isCopyOf(pObject,GetObjectPointerFromRingObject(P1))

	Func italic 
		return QFont_italic(pObject)

	Func kerning 
		return QFont_kerning(pObject)

	Func key 
		return QFont_key(pObject)

	Func letterSpacing 
		return QFont_letterSpacing(pObject)

	Func letterSpacingType 
		return QFont_letterSpacingType(pObject)

	Func overline 
		return QFont_overline(pObject)

	Func pixelSize 
		return QFont_pixelSize(pObject)

	Func pointSize 
		return QFont_pointSize(pObject)

	Func pointSizeF 
		return QFont_pointSizeF(pObject)

	Func resolve P1
		pTempObj = new QFont
		pTempObj.pObject = QFont_resolve(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func setBold P1
		return QFont_setBold(pObject,P1)

	Func setCapitalization P1
		return QFont_setCapitalization(pObject,P1)

	Func setFamily P1
		return QFont_setFamily(pObject,P1)

	Func setFixedPitch P1
		return QFont_setFixedPitch(pObject,P1)

	Func setHintingPreference P1
		return QFont_setHintingPreference(pObject,P1)

	Func setItalic P1
		return QFont_setItalic(pObject,P1)

	Func setKerning P1
		return QFont_setKerning(pObject,P1)

	Func setLetterSpacing P1,P2
		return QFont_setLetterSpacing(pObject,P1,P2)

	Func setOverline P1
		return QFont_setOverline(pObject,P1)

	Func setPixelSize P1
		return QFont_setPixelSize(pObject,P1)

	Func setPointSize P1
		return QFont_setPointSize(pObject,P1)

	Func setPointSizeF P1
		return QFont_setPointSizeF(pObject,P1)

	Func setStretch P1
		return QFont_setStretch(pObject,P1)

	Func setStrikeOut P1
		return QFont_setStrikeOut(pObject,P1)

	Func setStyle P1
		return QFont_setStyle(pObject,P1)

	Func setStyleHint P1,P2
		return QFont_setStyleHint(pObject,P1,P2)

	Func setStyleName P1
		return QFont_setStyleName(pObject,P1)

	Func setStyleStrategy P1
		return QFont_setStyleStrategy(pObject,P1)

	Func setUnderline P1
		return QFont_setUnderline(pObject,P1)

	Func setWeight P1
		return QFont_setWeight(pObject,P1)

	Func setWordSpacing P1
		return QFont_setWordSpacing(pObject,P1)

	Func stretch 
		return QFont_stretch(pObject)

	Func strikeOut 
		return QFont_strikeOut(pObject)

	Func style 
		return QFont_style(pObject)

	Func styleHint 
		return QFont_styleHint(pObject)

	Func styleName 
		return QFont_styleName(pObject)

	Func styleStrategy 
		return QFont_styleStrategy(pObject)

	Func toString 
		return QFont_toString(pObject)

	Func underline 
		return QFont_underline(pObject)

	Func weight 
		return QFont_weight(pObject)

	Func wordSpacing 
		return QFont_wordSpacing(pObject)

	Func insertSubstitution P1,P2
		return QFont_insertSubstitution(pObject,P1,P2)

	Func insertSubstitutions P1,P2
		return QFont_insertSubstitutions(pObject,P1,GetObjectPointerFromRingObject(P2))

	Func substitute P1
		return QFont_substitute(pObject,P1)

	Func substitutes P1
		pTempObj = new QStringList
		pTempObj.pObject = QFont_substitutes(pObject,P1)
		return pTempObj

	Func substitutions 
		pTempObj = new QStringList
		pTempObj.pObject = QFont_substitutions(pObject)
		return pTempObj

Class QBrush

	pObject

	Func init 
		pObject = QBrush_new()
		return self

	Func delete
		pObject = QBrush_delete(pObject)

	Func ObjectPointer
		return pObject

	Func color 
		pTempObj = new QColor
		pTempObj.pObject = QBrush_color(pObject)
		return pTempObj

	Func gradient 
		pTempObj = new QGradient
		pTempObj.pObject = QBrush_gradient(pObject)
		return pTempObj

	Func isOpaque 
		return QBrush_isOpaque(pObject)

	Func setColor P1
		return QBrush_setColor(pObject,GetObjectPointerFromRingObject(P1))

	Func setStyle P1
		return QBrush_setStyle(pObject,P1)

	Func setTexture P1
		return QBrush_setTexture(pObject,GetObjectPointerFromRingObject(P1))

	Func setTextureImage P1
		return QBrush_setTextureImage(pObject,GetObjectPointerFromRingObject(P1))

	Func setTransform P1
		return QBrush_setTransform(pObject,GetObjectPointerFromRingObject(P1))

	Func style 
		return QBrush_style(pObject)

	Func swap P1
		return QBrush_swap(pObject,GetObjectPointerFromRingObject(P1))

	Func texture 
		pTempObj = new QPixmap
		pTempObj.pObject = QBrush_texture(pObject)
		return pTempObj

	Func textureImage 
		pTempObj = new QImage
		pTempObj.pObject = QBrush_textureImage(pObject)
		return pTempObj

	Func transform 
		return QBrush_transform(pObject)

Class QTextCursor

	pObject

	Func init 
		pObject = QTextCursor_new()
		return self

	Func delete
		pObject = QTextCursor_delete(pObject)

	Func ObjectPointer
		return pObject

	Func anchor 
		return QTextCursor_anchor(pObject)

	Func atBlockEnd 
		return QTextCursor_atBlockEnd(pObject)

	Func atBlockStart 
		return QTextCursor_atBlockStart(pObject)

	Func atEnd 
		return QTextCursor_atEnd(pObject)

	Func atStart 
		return QTextCursor_atStart(pObject)

	Func beginEditBlock 
		return QTextCursor_beginEditBlock(pObject)

	Func block 
		pTempObj = new QTextBlock
		pTempObj.pObject = QTextCursor_block(pObject)
		return pTempObj

	Func blockCharFormat 
		pTempObj = new QTextCharFormat
		pTempObj.pObject = QTextCursor_blockCharFormat(pObject)
		return pTempObj

	Func blockFormat 
		return QTextCursor_blockFormat(pObject)

	Func blockNumber 
		return QTextCursor_blockNumber(pObject)

	Func charFormat 
		pTempObj = new QTextCharFormat
		pTempObj.pObject = QTextCursor_charFormat(pObject)
		return pTempObj

	Func clearSelection 
		return QTextCursor_clearSelection(pObject)

	Func columnNumber 
		return QTextCursor_columnNumber(pObject)

	Func createList P1
		return QTextCursor_createList(pObject,GetObjectPointerFromRingObject(P1))

	Func currentFrame 
		return QTextCursor_currentFrame(pObject)

	Func currentList 
		return QTextCursor_currentList(pObject)

	Func currentTable 
		return QTextCursor_currentTable(pObject)

	Func deleteChar 
		return QTextCursor_deleteChar(pObject)

	Func deletePreviousChar 
		return QTextCursor_deletePreviousChar(pObject)

	Func document 
		pTempObj = new QTextDocument
		pTempObj.pObject = QTextCursor_document(pObject)
		return pTempObj

	Func endEditBlock 
		return QTextCursor_endEditBlock(pObject)

	Func hasComplexSelection 
		return QTextCursor_hasComplexSelection(pObject)

	Func hasSelection 
		return QTextCursor_hasSelection(pObject)

	Func insertBlock 
		return QTextCursor_insertBlock(pObject)

	Func insertFragment P1
		return QTextCursor_insertFragment(pObject,GetObjectPointerFromRingObject(P1))

	Func insertFrame P1
		return QTextCursor_insertFrame(pObject,GetObjectPointerFromRingObject(P1))

	Func insertHtml P1
		return QTextCursor_insertHtml(pObject,P1)

	Func insertImage P1
		return QTextCursor_insertImage(pObject,GetObjectPointerFromRingObject(P1))

	Func insertList P1
		return QTextCursor_insertList(pObject,GetObjectPointerFromRingObject(P1))

	Func insertTable P1,P2,P3
		return QTextCursor_insertTable(pObject,P1,P2,GetObjectPointerFromRingObject(P3))

	Func insertText P1
		return QTextCursor_insertText(pObject,P1)

	Func insertText_2 P1,P2
		return QTextCursor_insertText_2(pObject,P1,GetObjectPointerFromRingObject(P2))

	Func isCopyOf P1
		return QTextCursor_isCopyOf(pObject,GetObjectPointerFromRingObject(P1))

	Func isNull 
		return QTextCursor_isNull(pObject)

	Func joinPreviousEditBlock 
		return QTextCursor_joinPreviousEditBlock(pObject)

	Func keepPositionOnInsert 
		return QTextCursor_keepPositionOnInsert(pObject)

	Func mergeBlockCharFormat P1
		return QTextCursor_mergeBlockCharFormat(pObject,GetObjectPointerFromRingObject(P1))

	Func mergeBlockFormat P1
		return QTextCursor_mergeBlockFormat(pObject,GetObjectPointerFromRingObject(P1))

	Func mergeCharFormat P1
		return QTextCursor_mergeCharFormat(pObject,GetObjectPointerFromRingObject(P1))

	Func movePosition P1,P2,P3
		return QTextCursor_movePosition(pObject,P1,P2,P3)

	Func position 
		return QTextCursor_position(pObject)

	Func positionInBlock 
		return QTextCursor_positionInBlock(pObject)

	Func removeSelectedText 
		return QTextCursor_removeSelectedText(pObject)

	Func select P1
		return QTextCursor_select(pObject,P1)

	Func selectedTableCells P1,P2,P3,P4
		return QTextCursor_selectedTableCells(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2),GetObjectPointerFromRingObject(P3),GetObjectPointerFromRingObject(P4))

	Func selectedText 
		return QTextCursor_selectedText(pObject)

	Func selection 
		return QTextCursor_selection(pObject)

	Func selectionEnd 
		return QTextCursor_selectionEnd(pObject)

	Func selectionStart 
		return QTextCursor_selectionStart(pObject)

	Func setBlockCharFormat P1
		return QTextCursor_setBlockCharFormat(pObject,GetObjectPointerFromRingObject(P1))

	Func setBlockFormat P1
		return QTextCursor_setBlockFormat(pObject,GetObjectPointerFromRingObject(P1))

	Func setCharFormat P1
		return QTextCursor_setCharFormat(pObject,GetObjectPointerFromRingObject(P1))

	Func setKeepPositionOnInsert P1
		return QTextCursor_setKeepPositionOnInsert(pObject,P1)

	Func setPosition P1,P2
		return QTextCursor_setPosition(pObject,P1,P2)

	Func setVerticalMovementX P1
		return QTextCursor_setVerticalMovementX(pObject,P1)

	Func setVisualNavigation P1
		return QTextCursor_setVisualNavigation(pObject,P1)

	Func verticalMovementX 
		return QTextCursor_verticalMovementX(pObject)

	Func visualNavigation 
		return QTextCursor_visualNavigation(pObject)

Class QTextDocument from QObject

	pObject

	Func init 
		pObject = QTextDocument_new()
		return self

	Func delete
		pObject = QTextDocument_delete(pObject)

	Func ObjectPointer
		return pObject

	Func addResource P1,P2,P3
		return QTextDocument_addResource(pObject,P1,GetObjectPointerFromRingObject(P2),GetObjectPointerFromRingObject(P3))

	Func adjustSize 
		return QTextDocument_adjustSize(pObject)

	Func allFormats 
		return QTextDocument_allFormats(pObject)

	Func availableRedoSteps 
		return QTextDocument_availableRedoSteps(pObject)

	Func availableUndoSteps 
		return QTextDocument_availableUndoSteps(pObject)

	Func begin 
		pTempObj = new QTextBlock
		pTempObj.pObject = QTextDocument_begin(pObject)
		return pTempObj

	Func blockCount 
		return QTextDocument_blockCount(pObject)

	Func characterAt P1
		pTempObj = new QChar
		pTempObj.pObject = QTextDocument_characterAt(pObject,P1)
		return pTempObj

	Func characterCount 
		return QTextDocument_characterCount(pObject)

	Func clearUndoRedoStacks P1
		return QTextDocument_clearUndoRedoStacks(pObject,P1)

	Func clone P1
		pTempObj = new QTextDocument
		pTempObj.pObject = QTextDocument_clone(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func defaultCursorMoveStyle 
		return QTextDocument_defaultCursorMoveStyle(pObject)

	Func defaultFont 
		pTempObj = new QFont
		pTempObj.pObject = QTextDocument_defaultFont(pObject)
		return pTempObj

	Func defaultStyleSheet 
		return QTextDocument_defaultStyleSheet(pObject)

	Func defaultTextOption 
		pTempObj = new QTextOption
		pTempObj.pObject = QTextDocument_defaultTextOption(pObject)
		return pTempObj

	Func documentLayout 
		return QTextDocument_documentLayout(pObject)

	Func documentMargin 
		return QTextDocument_documentMargin(pObject)

	Func drawContents P1,P2
		return QTextDocument_drawContents(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2))

	Func enddoc 
		pTempObj = new QTextBlock
		pTempObj.pObject = QTextDocument_end(pObject)
		return pTempObj

	Func find P1,P2,P3
		pTempObj = new QTextCursor
		pTempObj.pObject = QTextDocument_find(pObject,P1,GetObjectPointerFromRingObject(P2),P3)
		return pTempObj

	Func findBlock P1
		pTempObj = new QTextBlock
		pTempObj.pObject = QTextDocument_findBlock(pObject,P1)
		return pTempObj

	Func findBlockByLineNumber P1
		pTempObj = new QTextBlock
		pTempObj.pObject = QTextDocument_findBlockByLineNumber(pObject,P1)
		return pTempObj

	Func findBlockByNumber P1
		pTempObj = new QTextBlock
		pTempObj.pObject = QTextDocument_findBlockByNumber(pObject,P1)
		return pTempObj

	Func firstBlock 
		pTempObj = new QTextBlock
		pTempObj.pObject = QTextDocument_firstBlock(pObject)
		return pTempObj

	Func idealWidth 
		return QTextDocument_idealWidth(pObject)

	Func indentWidth 
		return QTextDocument_indentWidth(pObject)

	Func isEmpty 
		return QTextDocument_isEmpty(pObject)

	Func isModified 
		return QTextDocument_isModified(pObject)

	Func isRedoAvailable 
		return QTextDocument_isRedoAvailable(pObject)

	Func isUndoAvailable 
		return QTextDocument_isUndoAvailable(pObject)

	Func isUndoRedoEnabled 
		return QTextDocument_isUndoRedoEnabled(pObject)

	Func lastBlock 
		pTempObj = new QTextBlock
		pTempObj.pObject = QTextDocument_lastBlock(pObject)
		return pTempObj

	Func lineCount 
		return QTextDocument_lineCount(pObject)

	Func markContentsDirty P1,P2
		return QTextDocument_markContentsDirty(pObject,P1,P2)

	Func maximumBlockCount 
		return QTextDocument_maximumBlockCount(pObject)

	Func metaInformation P1
		return QTextDocument_metaInformation(pObject,P1)

	Func object P1
		return QTextDocument_object(pObject,P1)

	Func objectForFormat P1
		return QTextDocument_objectForFormat(pObject,GetObjectPointerFromRingObject(P1))

	Func pageCount 
		return QTextDocument_pageCount(pObject)

	Func pageSize 
		return QTextDocument_pageSize(pObject)

	Func redo P1
		return QTextDocument_redo(pObject,GetObjectPointerFromRingObject(P1))

	Func resource P1,P2
		pTempObj = new QVariant
		pTempObj.pObject = QTextDocument_resource(pObject,P1,GetObjectPointerFromRingObject(P2))
		return pTempObj

	Func revision 
		return QTextDocument_revision(pObject)

	Func rootFrame 
		return QTextDocument_rootFrame(pObject)

	Func setDefaultCursorMoveStyle P1
		return QTextDocument_setDefaultCursorMoveStyle(pObject,P1)

	Func setDefaultFont P1
		return QTextDocument_setDefaultFont(pObject,GetObjectPointerFromRingObject(P1))

	Func setDefaultStyleSheet P1
		return QTextDocument_setDefaultStyleSheet(pObject,P1)

	Func setDefaultTextOption P1
		return QTextDocument_setDefaultTextOption(pObject,GetObjectPointerFromRingObject(P1))

	Func setDocumentLayout P1
		return QTextDocument_setDocumentLayout(pObject,GetObjectPointerFromRingObject(P1))

	Func setDocumentMargin P1
		return QTextDocument_setDocumentMargin(pObject,P1)

	Func setHtml P1
		return QTextDocument_setHtml(pObject,P1)

	Func setIndentWidth P1
		return QTextDocument_setIndentWidth(pObject,P1)

	Func setMaximumBlockCount P1
		return QTextDocument_setMaximumBlockCount(pObject,P1)

	Func setMetaInformation P1,P2
		return QTextDocument_setMetaInformation(pObject,P1,P2)

	Func setPageSize P1
		return QTextDocument_setPageSize(pObject,GetObjectPointerFromRingObject(P1))

	Func setPlainText P1
		return QTextDocument_setPlainText(pObject,P1)

	Func setTextWidth P1
		return QTextDocument_setTextWidth(pObject,P1)

	Func setUndoRedoEnabled P1
		return QTextDocument_setUndoRedoEnabled(pObject,P1)

	Func setUseDesignMetrics P1
		return QTextDocument_setUseDesignMetrics(pObject,P1)

	Func size 
		return QTextDocument_size(pObject)

	Func textWidth 
		return QTextDocument_textWidth(pObject)

	Func toHtml P1
		return QTextDocument_toHtml(pObject,GetObjectPointerFromRingObject(P1))

	Func toPlainText 
		return QTextDocument_toPlainText(pObject)

	Func undo P1
		return QTextDocument_undo(pObject,GetObjectPointerFromRingObject(P1))

	Func useDesignMetrics 
		return QTextDocument_useDesignMetrics(pObject)

	Func setModified P1
		return QTextDocument_setModified(pObject,P1)

Class QTextOption

	pObject

	Func init P1
		pObject = QTextOption_new(P1)
		return self

	Func delete
		pObject = QTextOption_delete(pObject)

	Func ObjectPointer
		return pObject

	Func alignment 
		return QTextOption_alignment(pObject)

	Func flags 
		return QTextOption_flags(pObject)

	Func setAlignment P1
		return QTextOption_setAlignment(pObject,P1)

	Func setFlags P1
		return QTextOption_setFlags(pObject,P1)

	Func setTextDirection P1
		return QTextOption_setTextDirection(pObject,P1)

	Func setUseDesignMetrics P1
		return QTextOption_setUseDesignMetrics(pObject,P1)

	Func setWrapMode P1
		return QTextOption_setWrapMode(pObject,P1)

	Func tabStopDistance 
		return QTextOption_tabStopDistance(pObject)

	Func textDirection 
		return QTextOption_textDirection(pObject)

	Func useDesignMetrics 
		return QTextOption_useDesignMetrics(pObject)

	Func wrapMode 
		return QTextOption_wrapMode(pObject)

Class QTextBlock

	pObject

	Func init 
		pObject = QTextBlock_new()
		return self

	Func delete
		pObject = QTextBlock_delete(pObject)

	Func ObjectPointer
		return pObject

	Func blockFormat 
		return QTextBlock_blockFormat(pObject)

	Func blockFormatIndex 
		return QTextBlock_blockFormatIndex(pObject)

	Func blockNumber 
		return QTextBlock_blockNumber(pObject)

	Func charFormat 
		pTempObj = new QTextCharFormat
		pTempObj.pObject = QTextBlock_charFormat(pObject)
		return pTempObj

	Func charFormatIndex 
		return QTextBlock_charFormatIndex(pObject)

	Func clearLayout 
		return QTextBlock_clearLayout(pObject)

	Func contains P1
		return QTextBlock_contains(pObject,P1)

	Func document 
		pTempObj = new QTextDocument
		pTempObj.pObject = QTextBlock_document(pObject)
		return pTempObj

	Func firstLineNumber 
		return QTextBlock_firstLineNumber(pObject)

	Func isValid 
		return QTextBlock_isValid(pObject)

	Func isVisible 
		return QTextBlock_isVisible(pObject)

	Func layout 
		return QTextBlock_layout(pObject)

	Func length 
		return QTextBlock_length(pObject)

	Func lineCount 
		return QTextBlock_lineCount(pObject)

	Func nextblock 
		pTempObj = new QTextBlock
		pTempObj.pObject = QTextBlock_next(pObject)
		return pTempObj

	Func position 
		return QTextBlock_position(pObject)

	Func previous 
		pTempObj = new QTextBlock
		pTempObj.pObject = QTextBlock_previous(pObject)
		return pTempObj

	Func revision 
		return QTextBlock_revision(pObject)

	Func setLineCount P1
		return QTextBlock_setLineCount(pObject,P1)

	Func setRevision P1
		return QTextBlock_setRevision(pObject,P1)

	Func setUserData P1
		return QTextBlock_setUserData(pObject,GetObjectPointerFromRingObject(P1))

	Func setUserState P1
		return QTextBlock_setUserState(pObject,P1)

	Func setVisible P1
		return QTextBlock_setVisible(pObject,P1)

	Func text 
		return QTextBlock_text(pObject)

	Func textDirection 
		return QTextBlock_textDirection(pObject)

	Func textList 
		return QTextBlock_textList(pObject)

	Func userData 
		return QTextBlock_userData(pObject)

	Func userState 
		return QTextBlock_userState(pObject)

Class QPainterPath

	pObject

	Func init 
		pObject = QPainterPath_new()
		return self

	Func delete
		pObject = QPainterPath_delete(pObject)

	Func ObjectPointer
		return pObject

	Func addEllipse P1,P2,P3,P4
		return QPainterPath_addEllipse(pObject,P1,P2,P3,P4)

	Func addPath P1
		return QPainterPath_addPath(pObject,GetObjectPointerFromRingObject(P1))

	Func addPolygon P1
		return QPainterPath_addPolygon(pObject,GetObjectPointerFromRingObject(P1))

	Func addRect P1,P2,P3,P4
		return QPainterPath_addRect(pObject,P1,P2,P3,P4)

	Func addRegion P1
		return QPainterPath_addRegion(pObject,GetObjectPointerFromRingObject(P1))

	Func addRoundedRect P1,P2,P3,P4,P5,P6,P7
		return QPainterPath_addRoundedRect(pObject,P1,P2,P3,P4,P5,P6,P7)

	Func addText P1,P2,P3,P4
		return QPainterPath_addText(pObject,P1,P2,GetObjectPointerFromRingObject(P3),P4)

	Func angleAtPercent P1
		return QPainterPath_angleAtPercent(pObject,P1)

	Func arcMoveTo P1,P2,P3,P4,P5
		return QPainterPath_arcMoveTo(pObject,P1,P2,P3,P4,P5)

	Func arcTo P1,P2,P3,P4,P5,P6
		return QPainterPath_arcTo(pObject,P1,P2,P3,P4,P5,P6)

	Func boundingRect 
		pTempObj = new QRectF
		pTempObj.pObject = QPainterPath_boundingRect(pObject)
		return pTempObj

	Func closeSubpath 
		return QPainterPath_closeSubpath(pObject)

	Func connectPath P1
		return QPainterPath_connectPath(pObject,GetObjectPointerFromRingObject(P1))

	Func contains P1
		return QPainterPath_contains(pObject,GetObjectPointerFromRingObject(P1))

	Func controlPointRect 
		pTempObj = new QRectF
		pTempObj.pObject = QPainterPath_controlPointRect(pObject)
		return pTempObj

	Func cubicTo P1,P2,P3,P4,P5,P6
		return QPainterPath_cubicTo(pObject,P1,P2,P3,P4,P5,P6)

	Func currentPosition 
		pTempObj = new QPointF
		pTempObj.pObject = QPainterPath_currentPosition(pObject)
		return pTempObj

	Func elementAt P1
		return QPainterPath_elementAt(pObject,P1)

	Func elementCount 
		return QPainterPath_elementCount(pObject)

	Func fillRule 
		return QPainterPath_fillRule(pObject)

	Func intersected P1
		pTempObj = new QPainterPath
		pTempObj.pObject = QPainterPath_intersected(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func intersects P1
		return QPainterPath_intersects(pObject,GetObjectPointerFromRingObject(P1))

	Func isEmpty 
		return QPainterPath_isEmpty(pObject)

	Func length 
		return QPainterPath_length(pObject)

	Func lineTo P1,P2
		return QPainterPath_lineTo(pObject,P1,P2)

	Func moveTo P1,P2
		return QPainterPath_moveTo(pObject,P1,P2)

	Func percentAtLength P1
		return QPainterPath_percentAtLength(pObject,P1)

	Func pointAtPercent P1
		pTempObj = new QPointF
		pTempObj.pObject = QPainterPath_pointAtPercent(pObject,P1)
		return pTempObj

	Func quadTo P1,P2,P3,P4
		return QPainterPath_quadTo(pObject,P1,P2,P3,P4)

	Func setElementPositionAt P1,P2,P3
		return QPainterPath_setElementPositionAt(pObject,P1,P2,P3)

	Func setFillRule P1
		return QPainterPath_setFillRule(pObject,P1)

	Func simplified 
		pTempObj = new QPainterPath
		pTempObj.pObject = QPainterPath_simplified(pObject)
		return pTempObj

	Func slopeAtPercent P1
		return QPainterPath_slopeAtPercent(pObject,P1)

	Func subtracted P1
		pTempObj = new QPainterPath
		pTempObj.pObject = QPainterPath_subtracted(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func swap P1
		return QPainterPath_swap(pObject,GetObjectPointerFromRingObject(P1))

	Func toFillPolygon P1
		return QPainterPath_toFillPolygon(pObject,GetObjectPointerFromRingObject(P1))

	Func toReversed 
		pTempObj = new QPainterPath
		pTempObj.pObject = QPainterPath_toReversed(pObject)
		return pTempObj

	Func translate P1,P2
		return QPainterPath_translate(pObject,P1,P2)

	Func translated P1,P2
		pTempObj = new QPainterPath
		pTempObj.pObject = QPainterPath_translated(pObject,P1,P2)
		return pTempObj

	Func united P1
		pTempObj = new QPainterPath
		pTempObj.pObject = QPainterPath_united(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

Class QImage

	pObject

	Func init 
		pObject = QImage_new()
		return self

	Func delete
		pObject = QImage_delete(pObject)

	Func ObjectPointer
		return pObject

	Func allGray 
		return QImage_allGray(pObject)

	Func bitPlaneCount 
		return QImage_bitPlaneCount(pObject)

	Func bits 
		return QImage_bits(pObject)

	Func bytesPerLine 
		return QImage_bytesPerLine(pObject)

	Func cacheKey 
		return QImage_cacheKey(pObject)

	Func color P1
		return QImage_color(pObject,P1)

	Func colorCount 
		return QImage_colorCount(pObject)

	Func constBits 
		return QImage_constBits(pObject)

	Func constScanLine P1
		return QImage_constScanLine(pObject,P1)

	Func convertToFormat P1,P2
		pTempObj = new QImage
		pTempObj.pObject = QImage_convertToFormat(pObject,P1,P2)
		return pTempObj

	Func copy P1,P2,P3,P4
		pTempObj = new QImage
		pTempObj.pObject = QImage_copy(pObject,P1,P2,P3,P4)
		return pTempObj

	Func createAlphaMask P1
		pTempObj = new QImage
		pTempObj.pObject = QImage_createAlphaMask(pObject,P1)
		return pTempObj

	Func createHeuristicMask P1
		pTempObj = new QImage
		pTempObj.pObject = QImage_createHeuristicMask(pObject,P1)
		return pTempObj

	Func createMaskFromColor P1,P2
		pTempObj = new QImage
		pTempObj.pObject = QImage_createMaskFromColor(pObject,GetObjectPointerFromRingObject(P1),P2)
		return pTempObj

	Func depth 
		return QImage_depth(pObject)

	Func dotsPerMeterX 
		return QImage_dotsPerMeterX(pObject)

	Func dotsPerMeterY 
		return QImage_dotsPerMeterY(pObject)

	Func fill P1
		return QImage_fill(pObject,GetObjectPointerFromRingObject(P1))

	Func format 
		return QImage_format(pObject)

	Func hasAlphaChannel 
		return QImage_hasAlphaChannel(pObject)

	Func height 
		return QImage_height(pObject)

	Func invertPixels P1
		return QImage_invertPixels(pObject,P1)

	Func isGrayscale 
		return QImage_isGrayscale(pObject)

	Func isNull 
		return QImage_isNull(pObject)

	Func loadimage P1,P2
		return QImage_load(pObject,P1,P2)

	Func loadFromData P1,P2
		return QImage_loadFromData(pObject,GetObjectPointerFromRingObject(P1),P2)

	Func mirrored P1,P2
		pTempObj = new QImage
		pTempObj.pObject = QImage_mirrored(pObject,P1,P2)
		return pTempObj

	Func offset 
		pTempObj = new QPoint
		pTempObj.pObject = QImage_offset(pObject)
		return pTempObj

	Func pixel P1,P2
		return QImage_pixel(pObject,P1,P2)

	Func pixelIndex P1,P2
		return QImage_pixelIndex(pObject,P1,P2)

	Func rect 
		pTempObj = new QRect
		pTempObj.pObject = QImage_rect(pObject)
		return pTempObj

	Func rgbSwapped 
		pTempObj = new QImage
		pTempObj.pObject = QImage_rgbSwapped(pObject)
		return pTempObj

	Func save P1,P2,P3
		return QImage_save(pObject,P1,P2,P3)

	Func scaled P1,P2,P3,P4
		pTempObj = new QImage
		pTempObj.pObject = QImage_scaled(pObject,P1,P2,P3,P4)
		return pTempObj

	Func scaledToHeight P1,P2
		pTempObj = new QImage
		pTempObj.pObject = QImage_scaledToHeight(pObject,P1,P2)
		return pTempObj

	Func scaledToWidth P1,P2
		pTempObj = new QImage
		pTempObj.pObject = QImage_scaledToWidth(pObject,P1,P2)
		return pTempObj

	Func scanLine P1
		return QImage_scanLine(pObject,P1)

	Func setColor P1,P2
		return QImage_setColor(pObject,P1,GetObjectPointerFromRingObject(P2))

	Func setColorCount P1
		return QImage_setColorCount(pObject,P1)

	Func setDotsPerMeterX P1
		return QImage_setDotsPerMeterX(pObject,P1)

	Func setDotsPerMeterY P1
		return QImage_setDotsPerMeterY(pObject,P1)

	Func setOffset P1
		return QImage_setOffset(pObject,GetObjectPointerFromRingObject(P1))

	Func setPixel P1,P2,P3
		return QImage_setPixel(pObject,P1,P2,P3)

	Func setText P1,P2
		return QImage_setText(pObject,P1,P2)

	Func size 
		pTempObj = new QSize
		pTempObj.pObject = QImage_size(pObject)
		return pTempObj

	Func swap P1
		return QImage_swap(pObject,GetObjectPointerFromRingObject(P1))

	Func text P1
		return QImage_text(pObject,P1)

	Func textKeys 
		pTempObj = new QStringList
		pTempObj.pObject = QImage_textKeys(pObject)
		return pTempObj

	Func valid P1,P2
		return QImage_valid(pObject,P1,P2)

	Func width 
		return QImage_width(pObject)

Class QTextCharFormat

	pObject

	Func init 
		pObject = QTextCharFormat_new()
		return self

	Func delete
		pObject = QTextCharFormat_delete(pObject)

	Func ObjectPointer
		return pObject

	Func anchorHref 
		return QTextCharFormat_anchorHref(pObject)

	Func anchorNames 
		pTempObj = new QStringList
		pTempObj.pObject = QTextCharFormat_anchorNames(pObject)
		return pTempObj

	Func font 
		pTempObj = new QFont
		pTempObj.pObject = QTextCharFormat_font(pObject)
		return pTempObj

	Func fontCapitalization 
		return QTextCharFormat_fontCapitalization(pObject)

	Func fontFamily 
		return QTextCharFormat_fontFamily(pObject)

	Func fontFixedPitch 
		return QTextCharFormat_fontFixedPitch(pObject)

	Func fontHintingPreference 
		return QTextCharFormat_fontHintingPreference(pObject)

	Func fontItalic 
		return QTextCharFormat_fontItalic(pObject)

	Func fontKerning 
		return QTextCharFormat_fontKerning(pObject)

	Func fontLetterSpacing 
		return QTextCharFormat_fontLetterSpacing(pObject)

	Func fontLetterSpacingType 
		return QTextCharFormat_fontLetterSpacingType(pObject)

	Func fontOverline 
		return QTextCharFormat_fontOverline(pObject)

	Func fontPointSize 
		return QTextCharFormat_fontPointSize(pObject)

	Func fontStretch 
		return QTextCharFormat_fontStretch(pObject)

	Func fontStrikeOut 
		return QTextCharFormat_fontStrikeOut(pObject)

	Func fontStyleHint 
		return QTextCharFormat_fontStyleHint(pObject)

	Func fontStyleStrategy 
		return QTextCharFormat_fontStyleStrategy(pObject)

	Func fontUnderline 
		return QTextCharFormat_fontUnderline(pObject)

	Func fontWeight 
		return QTextCharFormat_fontWeight(pObject)

	Func fontWordSpacing 
		return QTextCharFormat_fontWordSpacing(pObject)

	Func isAnchor 
		return QTextCharFormat_isAnchor(pObject)

	Func isValid 
		return QTextCharFormat_isValid(pObject)

	Func setAnchor P1
		return QTextCharFormat_setAnchor(pObject,P1)

	Func setAnchorHref P1
		return QTextCharFormat_setAnchorHref(pObject,P1)

	Func setAnchorNames P1
		return QTextCharFormat_setAnchorNames(pObject,GetObjectPointerFromRingObject(P1))

	Func setFont_2 P1
		return QTextCharFormat_setFont_2(pObject,GetObjectPointerFromRingObject(P1))

	Func setFontCapitalization P1
		return QTextCharFormat_setFontCapitalization(pObject,P1)

	Func setFontFamily P1
		return QTextCharFormat_setFontFamily(pObject,P1)

	Func setFontFixedPitch P1
		return QTextCharFormat_setFontFixedPitch(pObject,P1)

	Func setFontHintingPreference P1
		return QTextCharFormat_setFontHintingPreference(pObject,P1)

	Func setFontItalic P1
		return QTextCharFormat_setFontItalic(pObject,P1)

	Func setFontKerning P1
		return QTextCharFormat_setFontKerning(pObject,P1)

	Func setFontLetterSpacing P1
		return QTextCharFormat_setFontLetterSpacing(pObject,P1)

	Func setFontLetterSpacingType P1
		return QTextCharFormat_setFontLetterSpacingType(pObject,P1)

	Func setFontOverline P1
		return QTextCharFormat_setFontOverline(pObject,P1)

	Func setFontPointSize P1
		return QTextCharFormat_setFontPointSize(pObject,P1)

	Func setFontStretch P1
		return QTextCharFormat_setFontStretch(pObject,P1)

	Func setFontStrikeOut P1
		return QTextCharFormat_setFontStrikeOut(pObject,P1)

	Func setFontStyleHint P1,P2
		return QTextCharFormat_setFontStyleHint(pObject,P1,P2)

	Func setFontStyleStrategy P1
		return QTextCharFormat_setFontStyleStrategy(pObject,P1)

	Func setFontUnderline P1
		return QTextCharFormat_setFontUnderline(pObject,P1)

	Func setFontWeight P1
		return QTextCharFormat_setFontWeight(pObject,P1)

	Func setFontWordSpacing P1
		return QTextCharFormat_setFontWordSpacing(pObject,P1)

	Func setTextOutline P1
		return QTextCharFormat_setTextOutline(pObject,GetObjectPointerFromRingObject(P1))

	Func setToolTip P1
		return QTextCharFormat_setToolTip(pObject,P1)

	Func setUnderlineColor P1
		return QTextCharFormat_setUnderlineColor(pObject,GetObjectPointerFromRingObject(P1))

	Func setUnderlineStyle P1
		return QTextCharFormat_setUnderlineStyle(pObject,P1)

	Func setVerticalAlignment P1
		return QTextCharFormat_setVerticalAlignment(pObject,P1)

	Func textOutline 
		pTempObj = new QPen
		pTempObj.pObject = QTextCharFormat_textOutline(pObject)
		return pTempObj

	Func toolTip 
		return QTextCharFormat_toolTip(pObject)

	Func underlineColor 
		pTempObj = new QColor
		pTempObj.pObject = QTextCharFormat_underlineColor(pObject)
		return pTempObj

	Func underlineStyle 
		return QTextCharFormat_underlineStyle(pObject)

	Func verticalAlignment 
		return QTextCharFormat_verticalAlignment(pObject)

Class QFontMetrics

	pObject

	Func init P1
		pObject = QFontMetrics_new(GetObjectPointerFromRingObject(P1))
		return self

	Func delete
		pObject = QFontMetrics_delete(pObject)

	Func ObjectPointer
		return pObject

	Func ascent 
		return QFontMetrics_ascent(pObject)

	Func averageCharWidth 
		return QFontMetrics_averageCharWidth(pObject)

	Func boundingRect P1
		pTempObj = new QRect
		pTempObj.pObject = QFontMetrics_boundingRect(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func boundingRect_2 P1
		pTempObj = new QRect
		pTempObj.pObject = QFontMetrics_boundingRect_2(pObject,P1)
		return pTempObj

	Func boundingRect_3 P1,P2,P3,P4,P5,P6,P7,P8
		pTempObj = new QRect
		pTempObj.pObject = QFontMetrics_boundingRect_3(pObject,P1,P2,P3,P4,P5,P6,P7,GetObjectPointerFromRingObject(P8))
		return pTempObj

	Func boundingRect_4 P1,P2,P3,P4,P5
		pTempObj = new QRect
		pTempObj.pObject = QFontMetrics_boundingRect_4(pObject,GetObjectPointerFromRingObject(P1),P2,P3,P4,GetObjectPointerFromRingObject(P5))
		return pTempObj

	Func descent 
		return QFontMetrics_descent(pObject)

	Func elidedText P1,P2,P3,P4
		return QFontMetrics_elidedText(pObject,P1,P2,P3,P4)

	Func height 
		return QFontMetrics_height(pObject)

	Func inFont P1
		return QFontMetrics_inFont(pObject,GetObjectPointerFromRingObject(P1))

	Func inFontUcs4 P1
		return QFontMetrics_inFontUcs4(pObject,P1)

	Func leading 
		return QFontMetrics_leading(pObject)

	Func leftBearing P1
		return QFontMetrics_leftBearing(pObject,GetObjectPointerFromRingObject(P1))

	Func lineSpacing 
		return QFontMetrics_lineSpacing(pObject)

	Func lineWidth 
		return QFontMetrics_lineWidth(pObject)

	Func maxWidth 
		return QFontMetrics_maxWidth(pObject)

	Func minLeftBearing 
		return QFontMetrics_minLeftBearing(pObject)

	Func minRightBearing 
		return QFontMetrics_minRightBearing(pObject)

	Func overlinePos 
		return QFontMetrics_overlinePos(pObject)

	Func rightBearing P1
		return QFontMetrics_rightBearing(pObject,GetObjectPointerFromRingObject(P1))

	Func size P1,P2,P3,P4
		pTempObj = new QSize
		pTempObj.pObject = QFontMetrics_size(pObject,P1,P2,P3,GetObjectPointerFromRingObject(P4))
		return pTempObj

	Func strikeOutPos 
		return QFontMetrics_strikeOutPos(pObject)

	Func tightBoundingRect P1
		pTempObj = new QRect
		pTempObj.pObject = QFontMetrics_tightBoundingRect(pObject,P1)
		return pTempObj

	Func underlinePos 
		return QFontMetrics_underlinePos(pObject)

	Func xHeight 
		return QFontMetrics_xHeight(pObject)

	Func horizontalAdvance P1,P2
		return QFontMetrics_horizontalAdvance(pObject,P1,P2)

	Func horizontalAdvance_2 P1
		return QFontMetrics_horizontalAdvance_2(pObject,GetObjectPointerFromRingObject(P1))

Class QLinearGradient from QGradient

	pObject

	Func init 
		pObject = QLinearGradient_new()
		return self

	Func delete
		pObject = QLinearGradient_delete(pObject)

	Func ObjectPointer
		return pObject

	Func finalStop 
		pTempObj = new QPointF
		pTempObj.pObject = QLinearGradient_finalStop(pObject)
		return pTempObj

	Func setFinalStop P1
		return QLinearGradient_setFinalStop(pObject,GetObjectPointerFromRingObject(P1))

	Func setFinalStop_2 P1,P2
		return QLinearGradient_setFinalStop_2(pObject,P1,P2)

	Func setStart P1
		return QLinearGradient_setStart(pObject,GetObjectPointerFromRingObject(P1))

	Func setStart_2 P1,P2
		return QLinearGradient_setStart_2(pObject,P1,P2)

	Func start 
		pTempObj = new QPointF
		pTempObj.pObject = QLinearGradient_start(pObject)
		return pTempObj

Class QGradient

	pObject

	Func init 
		pObject = QGradient_new()
		return self

	Func delete
		pObject = QGradient_delete(pObject)

	Func ObjectPointer
		return pObject

	Func coordinateMode 
		return QGradient_coordinateMode(pObject)

	Func setColorAt P1,P2
		return QGradient_setColorAt(pObject,P1,GetObjectPointerFromRingObject(P2))

	Func setCoordinateMode P1
		return QGradient_setCoordinateMode(pObject,P1)

	Func setSpread P1
		return QGradient_setSpread(pObject,P1)

	Func setStops P1
		return QGradient_setStops(pObject,GetObjectPointerFromRingObject(P1))

	Func spread 
		return QGradient_spread(pObject)

	Func stops 
		return QGradient_stops(pObject)

	Func type 
		return QGradient_type(pObject)

Class QCursor

	pObject

	Func init 
		pObject = QCursor_new()
		return self

	Func delete
		pObject = QCursor_delete(pObject)

	Func ObjectPointer
		return pObject

	Func bitmap 
		pTempObj = new QBitmap
		pTempObj.pObject = QCursor_bitmap(pObject)
		return pTempObj

	Func mask 
		pTempObj = new QBitmap
		pTempObj.pObject = QCursor_mask(pObject)
		return pTempObj

	Func hotSpot 
		pTempObj = new QPoint
		pTempObj.pObject = QCursor_hotSpot(pObject)
		return pTempObj

	Func pixmap 
		pTempObj = new QPixmap
		pTempObj.pObject = QCursor_pixmap(pObject)
		return pTempObj

	Func setShape P1
		return QCursor_setShape(pObject,P1)

	Func shape 
		return QCursor_shape(pObject)

	Func pos 
		pTempObj = new QPoint
		pTempObj.pObject = QCursor_pos(pObject)
		return pTempObj

	Func pos_2 P1
		pTempObj = new QPoint
		pTempObj.pObject = QCursor_pos_2(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func setPos P1,P2
		return QCursor_setPos(pObject,P1,P2)

	Func setPos_2 P1,P2,P3
		return QCursor_setPos_2(pObject,GetObjectPointerFromRingObject(P1),P2,P3)

	Func setPos_3 P1
		return QCursor_setPos_3(pObject,GetObjectPointerFromRingObject(P1))

	Func setPos_4 P1,P2
		return QCursor_setPos_4(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2))

Class QScreen

	pObject

	Func init P1
		pObject = QScreen_new(GetObjectPointerFromRingObject(P1))
		return self

	Func delete
		pObject = QScreen_delete(pObject)

	Func ObjectPointer
		return pObject

	Func angleBetween P1,P2
		return QScreen_angleBetween(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2))

	Func availableGeometry 
		pTempObj = new QRect
		pTempObj.pObject = QScreen_availableGeometry(pObject)
		return pTempObj

	Func availableSize 
		pTempObj = new QSize
		pTempObj.pObject = QScreen_availableSize(pObject)
		return pTempObj

	Func availableVirtualGeometry 
		pTempObj = new QRect
		pTempObj.pObject = QScreen_availableVirtualGeometry(pObject)
		return pTempObj

	Func availableVirtualSize 
		pTempObj = new QSize
		pTempObj.pObject = QScreen_availableVirtualSize(pObject)
		return pTempObj

	Func depth 
		return QScreen_depth(pObject)

	Func devicePixelRatio 
		return QScreen_devicePixelRatio(pObject)

	Func geometry 
		pTempObj = new QRect
		pTempObj.pObject = QScreen_geometry(pObject)
		return pTempObj

	Func grabWindow P1,P2,P3,P4,P5
		pTempObj = new QPixmap
		pTempObj.pObject = QScreen_grabWindow(pObject,P1,P2,P3,P4,P5)
		return pTempObj

	Func grabWindow_2 P1
		pTempObj = new QPixmap
		pTempObj.pObject = QScreen_grabWindow_2(pObject,P1)
		return pTempObj

	Func handle 
		return QScreen_handle(pObject)

	Func isLandscape P1
		return QScreen_isLandscape(pObject,GetObjectPointerFromRingObject(P1))

	Func isPortrait P1
		return QScreen_isPortrait(pObject,GetObjectPointerFromRingObject(P1))

	Func logicalDotsPerInch 
		return QScreen_logicalDotsPerInch(pObject)

	Func logicalDotsPerInchX 
		return QScreen_logicalDotsPerInchX(pObject)

	Func logicalDotsPerInchY 
		return QScreen_logicalDotsPerInchY(pObject)

	Func mapBetween P1,P2,P3
		pTempObj = new QRect
		pTempObj.pObject = QScreen_mapBetween(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2),GetObjectPointerFromRingObject(P3))
		return pTempObj

	Func name 
		return QScreen_name(pObject)

	Func nativeOrientation 
		return QScreen_nativeOrientation(pObject)

	Func orientation 
		return QScreen_orientation(pObject)

	Func orientationUpdateMask 
		return QScreen_orientationUpdateMask(pObject)

	Func physicalDotsPerInch 
		return QScreen_physicalDotsPerInch(pObject)

	Func physicalDotsPerInchX 
		return QScreen_physicalDotsPerInchX(pObject)

	Func physicalDotsPerInchY 
		return QScreen_physicalDotsPerInchY(pObject)

	Func physicalSize 
		return QScreen_physicalSize(pObject)

	Func primaryOrientation 
		return QScreen_primaryOrientation(pObject)

	Func refreshRate 
		return QScreen_refreshRate(pObject)

	Func setOrientationUpdateMask P1
		return QScreen_setOrientationUpdateMask(pObject,GetObjectPointerFromRingObject(P1))

	Func size 
		pTempObj = new QSize
		pTempObj.pObject = QScreen_size(pObject)
		return pTempObj

	Func transformBetween P1,P2,P3
		return QScreen_transformBetween(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2),GetObjectPointerFromRingObject(P3))

Class QWindow from QObject

	pObject

	Func init P1
		pObject = QWindow_new(GetObjectPointerFromRingObject(P1))
		return self

	Func delete
		pObject = QWindow_delete(pObject)

	Func ObjectPointer
		return pObject

	Func baseSize 
		pTempObj = new QSize
		pTempObj.pObject = QWindow_baseSize(pObject)
		return pTempObj

	Func contentOrientation 
		return QWindow_contentOrientation(pObject)

	Func create 
		return QWindow_create(pObject)

	Func cursor 
		pTempObj = new QCursor
		pTempObj.pObject = QWindow_cursor(pObject)
		return pTempObj

	Func destroy 
		return QWindow_destroy(pObject)

	Func devicePixelRatio 
		return QWindow_devicePixelRatio(pObject)

	Func filePath 
		return QWindow_filePath(pObject)

	Func flags 
		return QWindow_flags(pObject)

	Func focusObject 
		pTempObj = new QObject
		pTempObj.pObject = QWindow_focusObject(pObject)
		return pTempObj

	Func frameGeometry 
		pTempObj = new QRect
		pTempObj.pObject = QWindow_frameGeometry(pObject)
		return pTempObj

	Func frameMargins 
		return QWindow_frameMargins(pObject)

	Func framePosition 
		pTempObj = new QPoint
		pTempObj.pObject = QWindow_framePosition(pObject)
		return pTempObj

	Func geometry 
		pTempObj = new QRect
		pTempObj.pObject = QWindow_geometry(pObject)
		return pTempObj

	Func height 
		return QWindow_height(pObject)

	Func icon 
		pTempObj = new QIcon
		pTempObj.pObject = QWindow_icon(pObject)
		return pTempObj

	Func isActive 
		return QWindow_isActive(pObject)

	Func isAncestorOf P1,P2
		return QWindow_isAncestorOf(pObject,GetObjectPointerFromRingObject(P1),P2)

	Func isExposed 
		return QWindow_isExposed(pObject)

	Func isModal 
		return QWindow_isModal(pObject)

	Func isTopLevel 
		return QWindow_isTopLevel(pObject)

	Func isVisible 
		return QWindow_isVisible(pObject)

	Func mapFromGlobal P1
		pTempObj = new QPoint
		pTempObj.pObject = QWindow_mapFromGlobal(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func mapToGlobal P1
		pTempObj = new QPoint
		pTempObj.pObject = QWindow_mapToGlobal(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func mask 
		pTempObj = new QRegion
		pTempObj.pObject = QWindow_mask(pObject)
		return pTempObj

	Func maximumHeight 
		return QWindow_maximumHeight(pObject)

	Func maximumSize 
		pTempObj = new QSize
		pTempObj.pObject = QWindow_maximumSize(pObject)
		return pTempObj

	Func maximumWidth 
		return QWindow_maximumWidth(pObject)

	Func minimumHeight 
		return QWindow_minimumHeight(pObject)

	Func minimumSize 
		pTempObj = new QSize
		pTempObj.pObject = QWindow_minimumSize(pObject)
		return pTempObj

	Func minimumWidth 
		return QWindow_minimumWidth(pObject)

	Func modality 
		return QWindow_modality(pObject)

	Func opacity 
		return QWindow_opacity(pObject)

	Func position 
		pTempObj = new QPoint
		pTempObj.pObject = QWindow_position(pObject)
		return pTempObj

	Func reportContentOrientationChange P1
		return QWindow_reportContentOrientationChange(pObject,GetObjectPointerFromRingObject(P1))

	Func requestedFormat 
		return QWindow_requestedFormat(pObject)

	Func resize P1
		return QWindow_resize(pObject,GetObjectPointerFromRingObject(P1))

	Func resize_2 P1,P2
		return QWindow_resize_2(pObject,P1,P2)

	Func screen 
		pTempObj = new QScreen
		pTempObj.pObject = QWindow_screen(pObject)
		return pTempObj

	Func setBaseSize P1
		return QWindow_setBaseSize(pObject,GetObjectPointerFromRingObject(P1))

	Func setCursor P1
		return QWindow_setCursor(pObject,GetObjectPointerFromRingObject(P1))

	Func setFilePath P1
		return QWindow_setFilePath(pObject,P1)

	Func setFlags P1
		return QWindow_setFlags(pObject,P1)

	Func setFormat P1
		return QWindow_setFormat(pObject,GetObjectPointerFromRingObject(P1))

	Func setFramePosition P1
		return QWindow_setFramePosition(pObject,GetObjectPointerFromRingObject(P1))

	Func setGeometry P1,P2,P3,P4
		return QWindow_setGeometry(pObject,P1,P2,P3,P4)

	Func setGeometry_2 P1
		return QWindow_setGeometry_2(pObject,GetObjectPointerFromRingObject(P1))

	Func setIcon P1
		return QWindow_setIcon(pObject,GetObjectPointerFromRingObject(P1))

	Func setKeyboardGrabEnabled P1
		return QWindow_setKeyboardGrabEnabled(pObject,P1)

	Func setMask P1
		return QWindow_setMask(pObject,GetObjectPointerFromRingObject(P1))

	Func setMaximumSize P1
		return QWindow_setMaximumSize(pObject,GetObjectPointerFromRingObject(P1))

	Func setMinimumSize P1
		return QWindow_setMinimumSize(pObject,GetObjectPointerFromRingObject(P1))

	Func setModality P1
		return QWindow_setModality(pObject,P1)

	Func setMouseGrabEnabled P1
		return QWindow_setMouseGrabEnabled(pObject,P1)

	Func setOpacity P1
		return QWindow_setOpacity(pObject,P1)

	Func setParent P1
		return QWindow_setParent(pObject,GetObjectPointerFromRingObject(P1))

	Func setPosition P1
		return QWindow_setPosition(pObject,GetObjectPointerFromRingObject(P1))

	Func setPosition_2 P1,P2
		return QWindow_setPosition_2(pObject,P1,P2)

	Func setScreen P1
		return QWindow_setScreen(pObject,GetObjectPointerFromRingObject(P1))

	Func setSizeIncrement P1
		return QWindow_setSizeIncrement(pObject,GetObjectPointerFromRingObject(P1))

	Func setTransientParent P1
		return QWindow_setTransientParent(pObject,GetObjectPointerFromRingObject(P1))

	Func setVisibility P1
		return QWindow_setVisibility(pObject,P1)

	Func setWindowState P1
		return QWindow_setWindowState(pObject,P1)

	Func sizeIncrement 
		pTempObj = new QSize
		pTempObj.pObject = QWindow_sizeIncrement(pObject)
		return pTempObj

	Func title 
		return QWindow_title(pObject)

	Func transientParent 
		pTempObj = new QWindow
		pTempObj.pObject = QWindow_transientParent(pObject)
		return pTempObj

	Func type 
		return QWindow_type(pObject)

	Func unsetCursor 
		return QWindow_unsetCursor(pObject)

	Func visibility 
		return QWindow_visibility(pObject)

	Func width 
		return QWindow_width(pObject)

	Func winId 
		return QWindow_winId(pObject)

	Func windowState 
		return QWindow_windowState(pObject)

	Func x 
		return QWindow_x(pObject)

	Func y 
		return QWindow_y(pObject)

	Func alert P1
		return QWindow_alert(pObject,P1)

	Func close 
		return QWindow_close(pObject)

	Func hide 
		return QWindow_hide(pObject)

	Func lower 
		return QWindow_lower(pObject)

	Func raise 
		return QWindow_raise(pObject)

	Func requestActivate 
		return QWindow_requestActivate(pObject)

	Func setHeight P1
		return QWindow_setHeight(pObject,P1)

	Func setMaximumHeight P1
		return QWindow_setMaximumHeight(pObject,P1)

	Func setMaximumWidth P1
		return QWindow_setMaximumWidth(pObject,P1)

	Func setMinimumHeight P1
		return QWindow_setMinimumHeight(pObject,P1)

	Func setMinimumWidth P1
		return QWindow_setMinimumWidth(pObject,P1)

	Func setTitle P1
		return QWindow_setTitle(pObject,P1)

	Func setVisible P1
		return QWindow_setVisible(pObject,P1)

	Func setWidth P1
		return QWindow_setWidth(pObject,P1)

	Func setX P1
		return QWindow_setX(pObject,P1)

	Func setY P1
		return QWindow_setY(pObject,P1)

	Func show 
		return QWindow_show(pObject)

	Func showFullScreen 
		return QWindow_showFullScreen(pObject)

	Func showMaximized 
		return QWindow_showMaximized(pObject)

	Func showMinimized 
		return QWindow_showMinimized(pObject)

	Func showNormal 
		return QWindow_showNormal(pObject)

	Func fromWinId P1
		pTempObj = new QWindow
		pTempObj.pObject = QWindow_fromWinId(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func setactiveChangedEvent P1
		return QWindow_setactiveChangedEvent(pObject,P1)

	Func setcontentOrientationChangedEvent P1
		return QWindow_setcontentOrientationChangedEvent(pObject,P1)

	Func setfocusObjectChangedEvent P1
		return QWindow_setfocusObjectChangedEvent(pObject,P1)

	Func setheightChangedEvent P1
		return QWindow_setheightChangedEvent(pObject,P1)

	Func setmaximumHeightChangedEvent P1
		return QWindow_setmaximumHeightChangedEvent(pObject,P1)

	Func setmaximumWidthChangedEvent P1
		return QWindow_setmaximumWidthChangedEvent(pObject,P1)

	Func setminimumHeightChangedEvent P1
		return QWindow_setminimumHeightChangedEvent(pObject,P1)

	Func setminimumWidthChangedEvent P1
		return QWindow_setminimumWidthChangedEvent(pObject,P1)

	Func setmodalityChangedEvent P1
		return QWindow_setmodalityChangedEvent(pObject,P1)

	Func setopacityChangedEvent P1
		return QWindow_setopacityChangedEvent(pObject,P1)

	Func setscreenChangedEvent P1
		return QWindow_setscreenChangedEvent(pObject,P1)

	Func setvisibilityChangedEvent P1
		return QWindow_setvisibilityChangedEvent(pObject,P1)

	Func setvisibleChangedEvent P1
		return QWindow_setvisibleChangedEvent(pObject,P1)

	Func setwidthChangedEvent P1
		return QWindow_setwidthChangedEvent(pObject,P1)

	Func setwindowStateChangedEvent P1
		return QWindow_setwindowStateChangedEvent(pObject,P1)

	Func setwindowTitleChangedEvent P1
		return QWindow_setwindowTitleChangedEvent(pObject,P1)

	Func setxChangedEvent P1
		return QWindow_setxChangedEvent(pObject,P1)

	Func setyChangedEvent P1
		return QWindow_setyChangedEvent(pObject,P1)

	Func getactiveChangedEvent 
		return QWindow_getactiveChangedEvent(pObject)

	Func getcontentOrientationChangedEvent 
		return QWindow_getcontentOrientationChangedEvent(pObject)

	Func getfocusObjectChangedEvent 
		return QWindow_getfocusObjectChangedEvent(pObject)

	Func getheightChangedEvent 
		return QWindow_getheightChangedEvent(pObject)

	Func getmaximumHeightChangedEvent 
		return QWindow_getmaximumHeightChangedEvent(pObject)

	Func getmaximumWidthChangedEvent 
		return QWindow_getmaximumWidthChangedEvent(pObject)

	Func getminimumHeightChangedEvent 
		return QWindow_getminimumHeightChangedEvent(pObject)

	Func getminimumWidthChangedEvent 
		return QWindow_getminimumWidthChangedEvent(pObject)

	Func getmodalityChangedEvent 
		return QWindow_getmodalityChangedEvent(pObject)

	Func getopacityChangedEvent 
		return QWindow_getopacityChangedEvent(pObject)

	Func getscreenChangedEvent 
		return QWindow_getscreenChangedEvent(pObject)

	Func getvisibilityChangedEvent 
		return QWindow_getvisibilityChangedEvent(pObject)

	Func getvisibleChangedEvent 
		return QWindow_getvisibleChangedEvent(pObject)

	Func getwidthChangedEvent 
		return QWindow_getwidthChangedEvent(pObject)

	Func getwindowStateChangedEvent 
		return QWindow_getwindowStateChangedEvent(pObject)

	Func getwindowTitleChangedEvent 
		return QWindow_getwindowTitleChangedEvent(pObject)

	Func getxChangedEvent 
		return QWindow_getxChangedEvent(pObject)

	Func getyChangedEvent 
		return QWindow_getyChangedEvent(pObject)

Class QGuiApplication from QCoreApplication

	pObject

	Func init P1,P2
		pObject = QGuiApplication_new(P1,GetObjectPointerFromRingObject(P2))
		return self

	Func delete
		pObject = QGuiApplication_delete(pObject)

	Func ObjectPointer
		return pObject

	Func devicePixelRatio 
		return QGuiApplication_devicePixelRatio(pObject)

	Func isSavingSession 
		return QGuiApplication_isSavingSession(pObject)

	Func isSessionRestored 
		return QGuiApplication_isSessionRestored(pObject)

	Func sessionId 
		return QGuiApplication_sessionId(pObject)

	Func sessionKey 
		return QGuiApplication_sessionKey(pObject)

	Func allWindows 
		return QGuiApplication_allWindows(pObject)

	Func applicationDisplayName 
		return QGuiApplication_applicationDisplayName(pObject)

	Func applicationState 
		return QGuiApplication_applicationState(pObject)

	Func changeOverrideCursor P1
		return QGuiApplication_changeOverrideCursor(pObject,GetObjectPointerFromRingObject(P1))

	Func clipboard 
		pTempObj = new QClipboard
		pTempObj.pObject = QGuiApplication_clipboard(pObject)
		return pTempObj

	Func desktopSettingsAware 
		return QGuiApplication_desktopSettingsAware(pObject)

	Func exec 
		return QGuiApplication_exec(pObject)

	Func focusObject 
		pTempObj = new QObject
		pTempObj.pObject = QGuiApplication_focusObject(pObject)
		return pTempObj

	Func focusWindow 
		pTempObj = new QWindow
		pTempObj.pObject = QGuiApplication_focusWindow(pObject)
		return pTempObj

	Func font 
		pTempObj = new QFont
		pTempObj.pObject = QGuiApplication_font(pObject)
		return pTempObj

	Func inputMethod 
		return QGuiApplication_inputMethod(pObject)

	Func isLeftToRight 
		return QGuiApplication_isLeftToRight(pObject)

	Func isRightToLeft 
		return QGuiApplication_isRightToLeft(pObject)

	Func keyboardModifiers 
		return QGuiApplication_keyboardModifiers(pObject)

	Func layoutDirection 
		return QGuiApplication_layoutDirection(pObject)

	Func modalWindow 
		pTempObj = new QWindow
		pTempObj.pObject = QGuiApplication_modalWindow(pObject)
		return pTempObj

	Func mouseButtons 
		return QGuiApplication_mouseButtons(pObject)

	Func overrideCursor 
		pTempObj = new QCursor
		pTempObj.pObject = QGuiApplication_overrideCursor(pObject)
		return pTempObj

	Func palette 
		return QGuiApplication_palette(pObject)

	Func platformName 
		return QGuiApplication_platformName(pObject)

	Func platformNativeInterface 
		return QGuiApplication_platformNativeInterface(pObject)

	Func primaryScreen 
		pTempObj = new QScreen
		pTempObj.pObject = QGuiApplication_primaryScreen(pObject)
		return pTempObj

	Func queryKeyboardModifiers 
		return QGuiApplication_queryKeyboardModifiers(pObject)

	Func quitOnLastWindowClosed 
		return QGuiApplication_quitOnLastWindowClosed(pObject)

	Func restoreOverrideCursor 
		return QGuiApplication_restoreOverrideCursor(pObject)

	Func screens 
		return QGuiApplication_screens(pObject)

	Func setApplicationDisplayName P1
		return QGuiApplication_setApplicationDisplayName(pObject,P1)

	Func setDesktopSettingsAware P1
		return QGuiApplication_setDesktopSettingsAware(pObject,P1)

	Func setFont P1
		return QGuiApplication_setFont(pObject,GetObjectPointerFromRingObject(P1))

	Func setLayoutDirection P1
		return QGuiApplication_setLayoutDirection(pObject,P1)

	Func setOverrideCursor P1
		return QGuiApplication_setOverrideCursor(pObject,GetObjectPointerFromRingObject(P1))

	Func setPalette P1
		return QGuiApplication_setPalette(pObject,GetObjectPointerFromRingObject(P1))

	Func setQuitOnLastWindowClosed P1
		return QGuiApplication_setQuitOnLastWindowClosed(pObject,P1)

	Func styleHints 
		return QGuiApplication_styleHints(pObject)

	Func sync 
		return QGuiApplication_sync(pObject)

	Func topLevelAt P1
		pTempObj = new QWindow
		pTempObj.pObject = QGuiApplication_topLevelAt(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func topLevelWindows 
		return QGuiApplication_topLevelWindows(pObject)

	Func setapplicationDisplayNameChangedEvent P1
		return QGuiApplication_setapplicationDisplayNameChangedEvent(pObject,P1)

	Func setapplicationStateChangedEvent P1
		return QGuiApplication_setapplicationStateChangedEvent(pObject,P1)

	Func setcommitDataRequestEvent P1
		return QGuiApplication_setcommitDataRequestEvent(pObject,P1)

	Func setfocusObjectChangedEvent P1
		return QGuiApplication_setfocusObjectChangedEvent(pObject,P1)

	Func setfocusWindowChangedEvent P1
		return QGuiApplication_setfocusWindowChangedEvent(pObject,P1)

	Func setfontDatabaseChangedEvent P1
		return QGuiApplication_setfontDatabaseChangedEvent(pObject,P1)

	Func setlastWindowClosedEvent P1
		return QGuiApplication_setlastWindowClosedEvent(pObject,P1)

	Func setlayoutDirectionChangedEvent P1
		return QGuiApplication_setlayoutDirectionChangedEvent(pObject,P1)

	Func setpaletteChangedEvent P1
		return QGuiApplication_setpaletteChangedEvent(pObject,P1)

	Func setprimaryScreenChangedEvent P1
		return QGuiApplication_setprimaryScreenChangedEvent(pObject,P1)

	Func setsaveStateRequestEvent P1
		return QGuiApplication_setsaveStateRequestEvent(pObject,P1)

	Func setscreenAddedEvent P1
		return QGuiApplication_setscreenAddedEvent(pObject,P1)

	Func setscreenRemovedEvent P1
		return QGuiApplication_setscreenRemovedEvent(pObject,P1)

	Func getapplicationDisplayNameChangedEvent 
		return QGuiApplication_getapplicationDisplayNameChangedEvent(pObject)

	Func getapplicationStateChangedEvent 
		return QGuiApplication_getapplicationStateChangedEvent(pObject)

	Func getcommitDataRequestEvent 
		return QGuiApplication_getcommitDataRequestEvent(pObject)

	Func getfocusObjectChangedEvent 
		return QGuiApplication_getfocusObjectChangedEvent(pObject)

	Func getfocusWindowChangedEvent 
		return QGuiApplication_getfocusWindowChangedEvent(pObject)

	Func getfontDatabaseChangedEvent 
		return QGuiApplication_getfontDatabaseChangedEvent(pObject)

	Func getlastWindowClosedEvent 
		return QGuiApplication_getlastWindowClosedEvent(pObject)

	Func getlayoutDirectionChangedEvent 
		return QGuiApplication_getlayoutDirectionChangedEvent(pObject)

	Func getpaletteChangedEvent 
		return QGuiApplication_getpaletteChangedEvent(pObject)

	Func getprimaryScreenChangedEvent 
		return QGuiApplication_getprimaryScreenChangedEvent(pObject)

	Func getsaveStateRequestEvent 
		return QGuiApplication_getsaveStateRequestEvent(pObject)

	Func getscreenAddedEvent 
		return QGuiApplication_getscreenAddedEvent(pObject)

	Func getscreenRemovedEvent 
		return QGuiApplication_getscreenRemovedEvent(pObject)

Class QRegion

	pObject

	Func init 
		pObject = QRegion_new()
		return self

	Func delete
		pObject = QRegion_delete(pObject)

	Func ObjectPointer
		return pObject

	Func boundingRect 
		pTempObj = new QRect
		pTempObj.pObject = QRegion_boundingRect(pObject)
		return pTempObj

	Func contains P1
		return QRegion_contains(pObject,GetObjectPointerFromRingObject(P1))

	Func contains_2 P1
		return QRegion_contains_2(pObject,GetObjectPointerFromRingObject(P1))

	Func intersected P1
		pTempObj = new QRegion
		pTempObj.pObject = QRegion_intersected(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func intersected_2 P1
		pTempObj = new QRegion
		pTempObj.pObject = QRegion_intersected_2(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func intersects P1
		return QRegion_intersects(pObject,GetObjectPointerFromRingObject(P1))

	Func intersects_2 P1
		return QRegion_intersects_2(pObject,GetObjectPointerFromRingObject(P1))

	Func isEmpty 
		return QRegion_isEmpty(pObject)

	Func isNull 
		return QRegion_isNull(pObject)

	Func rectCount 
		return QRegion_rectCount(pObject)

	Func setRects P1,P2
		return QRegion_setRects(pObject,GetObjectPointerFromRingObject(P1),P2)

	Func subtracted P1
		pTempObj = new QRegion
		pTempObj.pObject = QRegion_subtracted(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func swap P1
		return QRegion_swap(pObject,GetObjectPointerFromRingObject(P1))

	Func translate P1,P2
		return QRegion_translate(pObject,P1,P2)

	Func translate_2 P1
		return QRegion_translate_2(pObject,GetObjectPointerFromRingObject(P1))

	Func translated P1,P2
		pTempObj = new QRegion
		pTempObj.pObject = QRegion_translated(pObject,P1,P2)
		return pTempObj

	Func translated_2 P1
		pTempObj = new QRegion
		pTempObj.pObject = QRegion_translated_2(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func united P1
		pTempObj = new QRegion
		pTempObj.pObject = QRegion_united(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func united_2 P1
		pTempObj = new QRegion
		pTempObj.pObject = QRegion_united_2(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func xored P1
		pTempObj = new QRegion
		pTempObj.pObject = QRegion_xored(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

Class QVector2D

	pObject

	Func init P1,P2
		pObject = QVector2D_new(P1,P2)
		return self

	Func delete
		pObject = QVector2D_delete(pObject)

	Func ObjectPointer
		return pObject

	Func distanceToLine P1,P2
		return QVector2D_distanceToLine(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2))

	Func distanceToPoint P1
		return QVector2D_distanceToPoint(pObject,GetObjectPointerFromRingObject(P1))

	Func isNull 
		return QVector2D_isNull(pObject)

	Func length 
		return QVector2D_length(pObject)

	Func lengthSquared 
		return QVector2D_lengthSquared(pObject)

	Func normalize 
		return QVector2D_normalize(pObject)

	Func normalized 
		pTempObj = new QVector2D
		pTempObj.pObject = QVector2D_normalized(pObject)
		return pTempObj

	Func setX P1
		return QVector2D_setX(pObject,P1)

	Func setY P1
		return QVector2D_setY(pObject,P1)

	Func toPoint 
		pTempObj = new QPoint
		pTempObj.pObject = QVector2D_toPoint(pObject)
		return pTempObj

	Func toPointF 
		pTempObj = new QPointF
		pTempObj.pObject = QVector2D_toPointF(pObject)
		return pTempObj

	Func toVector3D 
		pTempObj = new QVector3D
		pTempObj.pObject = QVector2D_toVector3D(pObject)
		return pTempObj

	Func toVector4D 
		pTempObj = new QVector4D
		pTempObj.pObject = QVector2D_toVector4D(pObject)
		return pTempObj

	Func x 
		return QVector2D_x(pObject)

	Func y 
		return QVector2D_y(pObject)

	Func dotProduct P1,P2
		return QVector2D_dotProduct(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2))

Class QVector3D

	pObject

	Func init P1,P2,P3
		pObject = QVector3D_new(P1,P2,P3)
		return self

	Func delete
		pObject = QVector3D_delete(pObject)

	Func ObjectPointer
		return pObject

	Func distanceToLine P1,P2
		return QVector3D_distanceToLine(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2))

	Func distanceToPlane P1,P2
		return QVector3D_distanceToPlane(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2))

	Func distanceToPlane_2 P1,P2,P3
		return QVector3D_distanceToPlane_2(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2),GetObjectPointerFromRingObject(P3))

	Func distanceToPoint P1
		return QVector3D_distanceToPoint(pObject,GetObjectPointerFromRingObject(P1))

	Func isNull 
		return QVector3D_isNull(pObject)

	Func length 
		return QVector3D_length(pObject)

	Func lengthSquared 
		return QVector3D_lengthSquared(pObject)

	Func normalize 
		return QVector3D_normalize(pObject)

	Func normalized 
		pTempObj = new QVector3D
		pTempObj.pObject = QVector3D_normalized(pObject)
		return pTempObj

	Func project P1,P2,P3
		pTempObj = new QVector3D
		pTempObj.pObject = QVector3D_project(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2),GetObjectPointerFromRingObject(P3))
		return pTempObj

	Func setX P1
		return QVector3D_setX(pObject,P1)

	Func setY P1
		return QVector3D_setY(pObject,P1)

	Func setZ P1
		return QVector3D_setZ(pObject,P1)

	Func toPoint 
		pTempObj = new QPoint
		pTempObj.pObject = QVector3D_toPoint(pObject)
		return pTempObj

	Func toPointF 
		pTempObj = new QPointF
		pTempObj.pObject = QVector3D_toPointF(pObject)
		return pTempObj

	Func toVector2D 
		pTempObj = new QVector2D
		pTempObj.pObject = QVector3D_toVector2D(pObject)
		return pTempObj

	Func toVector4D 
		pTempObj = new QVector4D
		pTempObj.pObject = QVector3D_toVector4D(pObject)
		return pTempObj

	Func unproject P1,P2,P3
		pTempObj = new QVector3D
		pTempObj.pObject = QVector3D_unproject(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2),GetObjectPointerFromRingObject(P3))
		return pTempObj

	Func x 
		return QVector3D_x(pObject)

	Func y 
		return QVector3D_y(pObject)

	Func z 
		return QVector3D_z(pObject)

	Func crossProduct P1,P2
		pTempObj = new QVector3D
		pTempObj.pObject = QVector3D_crossProduct(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2))
		return pTempObj

	Func dotProduct P1,P2
		return QVector3D_dotProduct(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2))

	Func normal P1,P2
		pTempObj = new QVector3D
		pTempObj.pObject = QVector3D_normal(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2))
		return pTempObj

	Func normal_2 P1,P2,P3
		pTempObj = new QVector3D
		pTempObj.pObject = QVector3D_normal_2(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2),GetObjectPointerFromRingObject(P3))
		return pTempObj

Class QVector4D

	pObject

	Func init P1,P2,P3,P4
		pObject = QVector4D_new(P1,P2,P3,P4)
		return self

	Func delete
		pObject = QVector4D_delete(pObject)

	Func ObjectPointer
		return pObject

	Func isNull 
		return QVector4D_isNull(pObject)

	Func length 
		return QVector4D_length(pObject)

	Func lengthSquared 
		return QVector4D_lengthSquared(pObject)

	Func normalize 
		return QVector4D_normalize(pObject)

	Func normalized 
		pTempObj = new QVector4D
		pTempObj.pObject = QVector4D_normalized(pObject)
		return pTempObj

	Func setW P1
		return QVector4D_setW(pObject,P1)

	Func setX P1
		return QVector4D_setX(pObject,P1)

	Func setY P1
		return QVector4D_setY(pObject,P1)

	Func setZ P1
		return QVector4D_setZ(pObject,P1)

	Func toPoint 
		pTempObj = new QPoint
		pTempObj.pObject = QVector4D_toPoint(pObject)
		return pTempObj

	Func toPointF 
		pTempObj = new QPointF
		pTempObj.pObject = QVector4D_toPointF(pObject)
		return pTempObj

	Func toVector2D 
		pTempObj = new QVector2D
		pTempObj.pObject = QVector4D_toVector2D(pObject)
		return pTempObj

	Func toVector2DAffine 
		pTempObj = new QVector2D
		pTempObj.pObject = QVector4D_toVector2DAffine(pObject)
		return pTempObj

	Func toVector3D 
		pTempObj = new QVector3D
		pTempObj.pObject = QVector4D_toVector3D(pObject)
		return pTempObj

	Func toVector3DAffine 
		pTempObj = new QVector3D
		pTempObj.pObject = QVector4D_toVector3DAffine(pObject)
		return pTempObj

	Func w 
		return QVector4D_w(pObject)

	Func x 
		return QVector4D_x(pObject)

	Func y 
		return QVector4D_y(pObject)

	Func z 
		return QVector4D_z(pObject)

	Func dotProduct P1,P2
		return QVector4D_dotProduct(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2))

Class QQuaternion

	pObject

	Func init P1,P2,P3,P4
		pObject = QQuaternion_new(P1,P2,P3,P4)
		return self

	Func delete
		pObject = QQuaternion_delete(pObject)

	Func ObjectPointer
		return pObject

	Func isIdentity 
		return QQuaternion_isIdentity(pObject)

	Func isNull 
		return QQuaternion_isNull(pObject)

	Func length 
		return QQuaternion_length(pObject)

	Func lengthSquared 
		return QQuaternion_lengthSquared(pObject)

	Func normalize 
		return QQuaternion_normalize(pObject)

	Func normalized 
		pTempObj = new QQuaternion
		pTempObj.pObject = QQuaternion_normalized(pObject)
		return pTempObj

	Func rotatedVector P1
		pTempObj = new QVector3D
		pTempObj.pObject = QQuaternion_rotatedVector(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func scalar 
		return QQuaternion_scalar(pObject)

	Func setScalar P1
		return QQuaternion_setScalar(pObject,P1)

	Func setVector P1
		return QQuaternion_setVector(pObject,GetObjectPointerFromRingObject(P1))

	Func setVector_2 P1,P2,P3
		return QQuaternion_setVector_2(pObject,P1,P2,P3)

	Func setX P1
		return QQuaternion_setX(pObject,P1)

	Func setY P1
		return QQuaternion_setY(pObject,P1)

	Func setZ P1
		return QQuaternion_setZ(pObject,P1)

	Func toVector4D 
		pTempObj = new QVector4D
		pTempObj.pObject = QQuaternion_toVector4D(pObject)
		return pTempObj

	Func vector 
		pTempObj = new QVector3D
		pTempObj.pObject = QQuaternion_vector(pObject)
		return pTempObj

	Func x 
		return QQuaternion_x(pObject)

	Func y 
		return QQuaternion_y(pObject)

	Func z 
		return QQuaternion_z(pObject)

	Func fromAxisAndAngle P1,P2
		pTempObj = new QQuaternion
		pTempObj.pObject = QQuaternion_fromAxisAndAngle(pObject,GetObjectPointerFromRingObject(P1),P2)
		return pTempObj

	Func fromAxisAndAngle_2 P1,P2,P3,P4
		pTempObj = new QQuaternion
		pTempObj.pObject = QQuaternion_fromAxisAndAngle_2(pObject,P1,P2,P3,P4)
		return pTempObj

	Func nlerp P1,P2,P3
		pTempObj = new QQuaternion
		pTempObj.pObject = QQuaternion_nlerp(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2),P3)
		return pTempObj

	Func slerp P1,P2,P3
		pTempObj = new QQuaternion
		pTempObj.pObject = QQuaternion_slerp(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2),P3)
		return pTempObj

Class QMatrix4x4

	pObject

	Func init P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16
		pObject = QMatrix4x4_new(P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16)
		return self

	Func delete
		pObject = QMatrix4x4_delete(pObject)

	Func ObjectPointer
		return pObject

	Func column P1
		pTempObj = new QVector4D
		pTempObj.pObject = QMatrix4x4_column(pObject,P1)
		return pTempObj

	Func constData 
		return QMatrix4x4_constData(pObject)

	Func data 
		return QMatrix4x4_data(pObject)

	Func data_2 
		return QMatrix4x4_data_2(pObject)

	Func determinant 
		return QMatrix4x4_determinant(pObject)

	Func fill P1
		return QMatrix4x4_fill(pObject,P1)

	Func flipCoordinates 
		return QMatrix4x4_flipCoordinates(pObject)

	Func frustum P1,P2,P3,P4,P5,P6
		return QMatrix4x4_frustum(pObject,P1,P2,P3,P4,P5,P6)

	Func inverted P1
		pTempObj = new QMatrix4x4
		pTempObj.pObject = QMatrix4x4_inverted(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func isIdentity 
		return QMatrix4x4_isIdentity(pObject)

	Func lookAt P1,P2,P3
		return QMatrix4x4_lookAt(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2),GetObjectPointerFromRingObject(P3))

	Func map P1
		pTempObj = new QPoint
		pTempObj.pObject = QMatrix4x4_map(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func map_2 P1
		pTempObj = new QPointF
		pTempObj.pObject = QMatrix4x4_map_2(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func map_3 P1
		pTempObj = new QVector3D
		pTempObj.pObject = QMatrix4x4_map_3(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func map_4 P1
		pTempObj = new QVector4D
		pTempObj.pObject = QMatrix4x4_map_4(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func mapRect P1
		pTempObj = new QRect
		pTempObj.pObject = QMatrix4x4_mapRect(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func mapRect_2 P1
		pTempObj = new QRectF
		pTempObj.pObject = QMatrix4x4_mapRect_2(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func mapVector P1
		pTempObj = new QVector3D
		pTempObj.pObject = QMatrix4x4_mapVector(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func normalMatrix 
		return QMatrix4x4_normalMatrix(pObject)

	Func optimize 
		return QMatrix4x4_optimize(pObject)

	Func ortho P1,P2,P3,P4,P5,P6
		return QMatrix4x4_ortho(pObject,P1,P2,P3,P4,P5,P6)

	Func ortho_2 P1
		return QMatrix4x4_ortho_2(pObject,GetObjectPointerFromRingObject(P1))

	Func ortho_3 P1
		return QMatrix4x4_ortho_3(pObject,GetObjectPointerFromRingObject(P1))

	Func perspective P1,P2,P3,P4
		return QMatrix4x4_perspective(pObject,P1,P2,P3,P4)

	Func rotate P1,P2
		return QMatrix4x4_rotate(pObject,P1,GetObjectPointerFromRingObject(P2))

	Func rotate_2 P1
		return QMatrix4x4_rotate_2(pObject,GetObjectPointerFromRingObject(P1))

	Func rotate_3 P1,P2,P3,P4
		return QMatrix4x4_rotate_3(pObject,P1,P2,P3,P4)

	Func row P1
		pTempObj = new QVector4D
		pTempObj.pObject = QMatrix4x4_row(pObject,P1)
		return pTempObj

	Func scale P1
		return QMatrix4x4_scale(pObject,GetObjectPointerFromRingObject(P1))

	Func scale_2 P1,P2
		return QMatrix4x4_scale_2(pObject,P1,P2)

	Func scale_3 P1,P2,P3
		return QMatrix4x4_scale_3(pObject,P1,P2,P3)

	Func scale_4 P1
		return QMatrix4x4_scale_4(pObject,P1)

	Func setColumn P1,P2
		return QMatrix4x4_setColumn(pObject,P1,GetObjectPointerFromRingObject(P2))

	Func setRow P1,P2
		return QMatrix4x4_setRow(pObject,P1,GetObjectPointerFromRingObject(P2))

	Func setToIdentity 
		return QMatrix4x4_setToIdentity(pObject)

	Func toTransform 
		return QMatrix4x4_toTransform(pObject)

	Func toTransform_2 P1
		return QMatrix4x4_toTransform_2(pObject,P1)

	Func translate P1
		return QMatrix4x4_translate(pObject,GetObjectPointerFromRingObject(P1))

	Func translate_2 P1,P2
		return QMatrix4x4_translate_2(pObject,P1,P2)

	Func translate_3 P1,P2,P3
		return QMatrix4x4_translate_3(pObject,P1,P2,P3)

	Func transposed 
		pTempObj = new QMatrix4x4
		pTempObj.pObject = QMatrix4x4_transposed(pObject)
		return pTempObj

Class QDrag from QObject

	pObject

	Func init P1
		pObject = QDrag_new(GetObjectPointerFromRingObject(P1))
		return self

	Func delete
		pObject = QDrag_delete(pObject)

	Func ObjectPointer
		return pObject

	Func defaultAction 
		return QDrag_defaultAction(pObject)

	Func dragCursor P1
		pTempObj = new QPixmap
		pTempObj.pObject = QDrag_dragCursor(pObject,P1)
		return pTempObj

	Func exec P1
		return QDrag_exec(pObject,P1)

	Func exec_2 P1,P2
		return QDrag_exec_2(pObject,P1,P2)

	Func hotSpot 
		pTempObj = new QPoint
		pTempObj.pObject = QDrag_hotSpot(pObject)
		return pTempObj

	Func mimeData 
		pTempObj = new QMimeData
		pTempObj.pObject = QDrag_mimeData(pObject)
		return pTempObj

	Func pixmap 
		pTempObj = new QPixmap
		pTempObj.pObject = QDrag_pixmap(pObject)
		return pTempObj

	Func setDragCursor P1,P2
		return QDrag_setDragCursor(pObject,GetObjectPointerFromRingObject(P1),P2)

	Func setHotSpot P1
		return QDrag_setHotSpot(pObject,GetObjectPointerFromRingObject(P1))

	Func setMimeData P1
		return QDrag_setMimeData(pObject,GetObjectPointerFromRingObject(P1))

	Func setPixmap P1
		return QDrag_setPixmap(pObject,GetObjectPointerFromRingObject(P1))

	Func source 
		pTempObj = new QObject
		pTempObj.pObject = QDrag_source(pObject)
		return pTempObj

	Func supportedActions 
		return QDrag_supportedActions(pObject)

	Func target 
		pTempObj = new QObject
		pTempObj.pObject = QDrag_target(pObject)
		return pTempObj

	Func setactionChangedEvent P1
		return QDrag_setactionChangedEvent(pObject,P1)

	Func settargetChangedEvent P1
		return QDrag_settargetChangedEvent(pObject,P1)

	Func getactionChangedEvent 
		return QDrag_getactionChangedEvent(pObject)

	Func gettargetChangedEvent 
		return QDrag_gettargetChangedEvent(pObject)

Class QDropEvent from QEvent

	pObject

	Func init P1,P2,P3,P4,P5,P6
		pObject = QDropEvent_new(GetObjectPointerFromRingObject(P1),P2,GetObjectPointerFromRingObject(P3),P4,P5,P6)
		return self

	Func delete
		pObject = QDropEvent_delete(pObject)

	Func ObjectPointer
		return pObject

	Func acceptProposedAction 
		return QDropEvent_acceptProposedAction(pObject)

	Func dropAction 
		return QDropEvent_dropAction(pObject)

	Func keyboardModifiers 
		return QDropEvent_keyboardModifiers(pObject)

	Func mimeData 
		pTempObj = new QMimeData
		pTempObj.pObject = QDropEvent_mimeData(pObject)
		return pTempObj

	Func mouseButtons 
		return QDropEvent_mouseButtons(pObject)

	Func pos 
		pTempObj = new QPoint
		pTempObj.pObject = QDropEvent_pos(pObject)
		return pTempObj

	Func posF 
		pTempObj = new QPointF
		pTempObj.pObject = QDropEvent_posF(pObject)
		return pTempObj

	Func possibleActions 
		return QDropEvent_possibleActions(pObject)

	Func proposedAction 
		return QDropEvent_proposedAction(pObject)

	Func setDropAction P1
		return QDropEvent_setDropAction(pObject,P1)

	Func source 
		pTempObj = new QObject
		pTempObj.pObject = QDropEvent_source(pObject)
		return pTempObj

Class QDragMoveEvent from QDropEvent

	pObject

	Func init P1,P2,P3,P4,P5,P6
		pObject = QDragMoveEvent_new(GetObjectPointerFromRingObject(P1),P2,GetObjectPointerFromRingObject(P3),P4,P5,P6)
		return self

	Func delete
		pObject = QDragMoveEvent_delete(pObject)

	Func ObjectPointer
		return pObject

	Func accept P1
		return QDragMoveEvent_accept(pObject,GetObjectPointerFromRingObject(P1))

	Func accept_2 
		return QDragMoveEvent_accept_2(pObject)

	Func answerRect 
		pTempObj = new QRect
		pTempObj.pObject = QDragMoveEvent_answerRect(pObject)
		return pTempObj

	Func ignore P1
		return QDragMoveEvent_ignore(pObject,GetObjectPointerFromRingObject(P1))

	Func ignore_2 
		return QDragMoveEvent_ignore_2(pObject)

Class QClipboard

	pObject


	Func clear P1
		return QClipboard_clear(pObject,P1)

	Func image P1
		pTempObj = new QImage
		pTempObj.pObject = QClipboard_image(pObject,P1)
		return pTempObj

	Func mimeData P1
		pTempObj = new QMimeData
		pTempObj.pObject = QClipboard_mimeData(pObject,P1)
		return pTempObj

	Func ownsClipboard 
		return QClipboard_ownsClipboard(pObject)

	Func ownsFindBuffer 
		return QClipboard_ownsFindBuffer(pObject)

	Func ownsSelection 
		return QClipboard_ownsSelection(pObject)

	Func pixmap P1
		pTempObj = new QPixmap
		pTempObj.pObject = QClipboard_pixmap(pObject,P1)
		return pTempObj

	Func setImage P1,P2
		return QClipboard_setImage(pObject,GetObjectPointerFromRingObject(P1),P2)

	Func setMimeData P1,P2
		return QClipboard_setMimeData(pObject,GetObjectPointerFromRingObject(P1),P2)

	Func setPixmap P1,P2
		return QClipboard_setPixmap(pObject,GetObjectPointerFromRingObject(P1),P2)

	Func setText P1,P2
		return QClipboard_setText(pObject,P1,P2)

	Func supportsFindBuffer 
		return QClipboard_supportsFindBuffer(pObject)

	Func supportsSelection 
		return QClipboard_supportsSelection(pObject)

	Func text P1
		return QClipboard_text(pObject,P1)

Class QMovie from QObject

	pObject

	Func init P1
		pObject = QMovie_new(GetObjectPointerFromRingObject(P1))
		return self

	Func delete
		pObject = QMovie_delete(pObject)

	Func ObjectPointer
		return pObject

	Func backgroundColor 
		pTempObj = new QColor
		pTempObj.pObject = QMovie_backgroundColor(pObject)
		return pTempObj

	Func cacheMode 
		return QMovie_cacheMode(pObject)

	Func currentFrameNumber 
		return QMovie_currentFrameNumber(pObject)

	Func currentImage 
		pTempObj = new QImage
		pTempObj.pObject = QMovie_currentImage(pObject)
		return pTempObj

	Func currentPixmap 
		pTempObj = new QPixmap
		pTempObj.pObject = QMovie_currentPixmap(pObject)
		return pTempObj

	Func device 
		pTempObj = new QIODevice
		pTempObj.pObject = QMovie_device(pObject)
		return pTempObj

	Func fileName 
		return QMovie_fileName(pObject)

	Func format 
		pTempObj = new QByteArray
		pTempObj.pObject = QMovie_format(pObject)
		return pTempObj

	Func frameCount 
		return QMovie_frameCount(pObject)

	Func frameRect 
		pTempObj = new QRect
		pTempObj.pObject = QMovie_frameRect(pObject)
		return pTempObj

	Func isValid 
		return QMovie_isValid(pObject)

	Func jumpToFrame P1
		return QMovie_jumpToFrame(pObject,P1)

	Func loopCount 
		return QMovie_loopCount(pObject)

	Func nextFrameDelay 
		return QMovie_nextFrameDelay(pObject)

	Func scaledSize 
		pTempObj = new QSize
		pTempObj.pObject = QMovie_scaledSize(pObject)
		return pTempObj

	Func setBackgroundColor P1
		return QMovie_setBackgroundColor(pObject,GetObjectPointerFromRingObject(P1))

	Func setCacheMode P1
		return QMovie_setCacheMode(pObject,P1)

	Func setDevice P1
		return QMovie_setDevice(pObject,GetObjectPointerFromRingObject(P1))

	Func setFileName P1
		return QMovie_setFileName(pObject,P1)

	Func setFormat P1
		return QMovie_setFormat(pObject,GetObjectPointerFromRingObject(P1))

	Func setScaledSize P1
		return QMovie_setScaledSize(pObject,GetObjectPointerFromRingObject(P1))

	Func speed 
		return QMovie_speed(pObject)

	Func state 
		return QMovie_state(pObject)

	Func jumpToNextFrame 
		return QMovie_jumpToNextFrame(pObject)

	Func setPaused P1
		return QMovie_setPaused(pObject,P1)

	Func setSpeed P1
		return QMovie_setSpeed(pObject,P1)

	Func start 
		return QMovie_start(pObject)

	Func stop 
		return QMovie_stop(pObject)

	Func seterrorEvent P1
		return QMovie_seterrorEvent(pObject,P1)

	Func setfinishedEvent P1
		return QMovie_setfinishedEvent(pObject,P1)

	Func setframeChangedEvent P1
		return QMovie_setframeChangedEvent(pObject,P1)

	Func setresizedEvent P1
		return QMovie_setresizedEvent(pObject,P1)

	Func setstartedEvent P1
		return QMovie_setstartedEvent(pObject,P1)

	Func setstateChangedEvent P1
		return QMovie_setstateChangedEvent(pObject,P1)

	Func setupdatedEvent P1
		return QMovie_setupdatedEvent(pObject,P1)

	Func geterrorEvent 
		return QMovie_geterrorEvent(pObject)

	Func getfinishedEvent 
		return QMovie_getfinishedEvent(pObject)

	Func getframeChangedEvent 
		return QMovie_getframeChangedEvent(pObject)

	Func getresizedEvent 
		return QMovie_getresizedEvent(pObject)

	Func getstartedEvent 
		return QMovie_getstartedEvent(pObject)

	Func getstateChangedEvent 
		return QMovie_getstateChangedEvent(pObject)

	Func getupdatedEvent 
		return QMovie_getupdatedEvent(pObject)

Class QTransform2

	pObject

	Func init P1,P2,P3,P4,P5,P6
		pObject = QTransform2_new(P1,P2,P3,P4,P5,P6)
		return self

	Func delete
		pObject = QTransform2_delete(pObject)

	Func ObjectPointer
		return pObject

	Func m11 
		return QTransform2_m11(pObject)

	Func m12 
		return QTransform2_m12(pObject)

	Func m13 
		return QTransform2_m13(pObject)

	Func m21 
		return QTransform2_m21(pObject)

	Func m22 
		return QTransform2_m22(pObject)

	Func m23 
		return QTransform2_m23(pObject)

	Func m31 
		return QTransform2_m31(pObject)

	Func m32 
		return QTransform2_m32(pObject)

	Func m33 
		return QTransform2_m33(pObject)

	Func adjoint 
		return QTransform2_adjoint(pObject)

	Func determinant 
		return QTransform2_determinant(pObject)

	Func dx 
		return QTransform2_dx(pObject)

	Func dy 
		return QTransform2_dy(pObject)

	Func inverted P1
		return QTransform2_inverted(pObject,GetObjectPointerFromRingObject(P1))

	Func isAffine 
		return QTransform2_isAffine(pObject)

	Func isIdentity 
		return QTransform2_isIdentity(pObject)

	Func isInvertible 
		return QTransform2_isInvertible(pObject)

	Func isRotating 
		return QTransform2_isRotating(pObject)

	Func isScaling 
		return QTransform2_isScaling(pObject)

	Func isTranslating 
		return QTransform2_isTranslating(pObject)

	Func map P1,P2,P3,P4
		return QTransform2_map(pObject,P1,P2,GetObjectPointerFromRingObject(P3),GetObjectPointerFromRingObject(P4))

	Func map_2 P1
		pTempObj = new QPoint
		pTempObj.pObject = QTransform2_map_2(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func map_3 P1
		pTempObj = new QPointF
		pTempObj.pObject = QTransform2_map_3(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func map_4 P1
		return QTransform2_map_4(pObject,GetObjectPointerFromRingObject(P1))

	Func map_5 P1
		pTempObj = new QLineF
		pTempObj.pObject = QTransform2_map_5(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func map_6 P1
		return QTransform2_map_6(pObject,GetObjectPointerFromRingObject(P1))

	Func map_7 P1
		return QTransform2_map_7(pObject,GetObjectPointerFromRingObject(P1))

	Func map_8 P1
		pTempObj = new QRegion
		pTempObj.pObject = QTransform2_map_8(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func map_9 P1
		pTempObj = new QPainterPath
		pTempObj.pObject = QTransform2_map_9(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func map_10 P1,P2,P3,P4
		return QTransform2_map_10(pObject,P1,P2,GetObjectPointerFromRingObject(P3),GetObjectPointerFromRingObject(P4))

	Func mapRect P1
		pTempObj = new QRectF
		pTempObj.pObject = QTransform2_mapRect(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func mapRect_2 P1
		pTempObj = new QRect
		pTempObj.pObject = QTransform2_mapRect_2(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func mapToPolygon P1
		return QTransform2_mapToPolygon(pObject,GetObjectPointerFromRingObject(P1))

	Func reset 
		return QTransform2_reset(pObject)

	Func rotate P1,P2
		return QTransform2_rotate(pObject,P1,GetObjectPointerFromRingObject(P2))

	Func rotateRadians P1,P2
		return QTransform2_rotateRadians(pObject,P1,GetObjectPointerFromRingObject(P2))

	Func scale P1,P2
		return QTransform2_scale(pObject,P1,P2)

	Func setMatrix P1,P2,P3,P4,P5,P6,P7,P8,P9
		return QTransform2_setMatrix(pObject,P1,P2,P3,P4,P5,P6,P7,P8,P9)

	Func shear P1,P2
		return QTransform2_shear(pObject,P1,P2)

	Func translate P1,P2
		return QTransform2_translate(pObject,P1,P2)

	Func transposed 
		return QTransform2_transposed(pObject)

	Func type 
		return QTransform2_type(pObject)

Class QApp from QGuiApplication

	pObject


	Func exec 
		return QApp_exec()

	Func quit 
		return QApp_quit()

	Func processEvents 
		return QApp_processEvents()

	Func styleWindows 
		return QApp_styleWindows()

	Func styleWindowsVista 
		return QApp_styleWindowsVista()

	Func styleFusion 
		return QApp_styleFusion()

	Func styleFusionBlack 
		return QApp_styleFusionBlack()

	Func styleFusionCustom P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12
		return QApp_styleFusionCustom(GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2),GetObjectPointerFromRingObject(P3),GetObjectPointerFromRingObject(P4),GetObjectPointerFromRingObject(P5),GetObjectPointerFromRingObject(P6),GetObjectPointerFromRingObject(P7),GetObjectPointerFromRingObject(P8),GetObjectPointerFromRingObject(P9),GetObjectPointerFromRingObject(P10),GetObjectPointerFromRingObject(P11),GetObjectPointerFromRingObject(P12))

	Func closeAllWindows 
		return QApp_closeAllWindows()

	Func keyboardModifiers 
		return QApp_keyboardModifiers()

	Func clipboard 
		pTempObj = new QClipboard
		pTempObj.pObject = QApp_clipboard()
		return pTempObj

	Func style 
		pTempObj = new QStyle
		pTempObj.pObject = QApp_style()
		return pTempObj

	Func aboutQt 
		return QApp_aboutQt()

	Func activeModalWidget 
		pTempObj = new QWidget
		pTempObj.pObject = QApp_activeModalWidget()
		return pTempObj

	Func activePopupWidget 
		pTempObj = new QWidget
		pTempObj.pObject = QApp_activePopupWidget()
		return pTempObj

	Func activeWindow 
		pTempObj = new QWidget
		pTempObj.pObject = QApp_activeWindow()
		return pTempObj

	Func focusWidget 
		pTempObj = new QWidget
		pTempObj.pObject = QApp_focusWidget()
		return pTempObj

	Func titlebarHeight 
		return QApp_titlebarHeight()

Class QWidget from QObject

	pObject

	Func init 
		pObject = QWidget_new()
		return self

	Func delete
		pObject = QWidget_delete(pObject)

	Func ObjectPointer
		return pObject

	Func acceptDrops 
		return QWidget_acceptDrops(pObject)

	Func accessibleDescription 
		return QWidget_accessibleDescription(pObject)

	Func accessibleName 
		return QWidget_accessibleName(pObject)

	Func activateWindow 
		return QWidget_activateWindow(pObject)

	Func addAction P1
		return QWidget_addAction(pObject,GetObjectPointerFromRingObject(P1))

	Func adjustSize 
		return QWidget_adjustSize(pObject)

	Func autoFillBackground 
		return QWidget_autoFillBackground(pObject)

	Func backgroundRole 
		return QWidget_backgroundRole(pObject)

	Func baseSize 
		pTempObj = new QSize
		pTempObj.pObject = QWidget_baseSize(pObject)
		return pTempObj

	Func childAt P1,P2
		pTempObj = new QWidget
		pTempObj.pObject = QWidget_childAt(pObject,P1,P2)
		return pTempObj

	Func childrenRect 
		pTempObj = new QRect
		pTempObj.pObject = QWidget_childrenRect(pObject)
		return pTempObj

	Func childrenRegion 
		pTempObj = new QRegion
		pTempObj.pObject = QWidget_childrenRegion(pObject)
		return pTempObj

	Func clearFocus 
		return QWidget_clearFocus(pObject)

	Func clearMask 
		return QWidget_clearMask(pObject)

	Func contentsMargins 
		return QWidget_contentsMargins(pObject)

	Func contentsRect 
		pTempObj = new QRect
		pTempObj.pObject = QWidget_contentsRect(pObject)
		return pTempObj

	Func contextMenuPolicy 
		return QWidget_contextMenuPolicy(pObject)

	Func cursor 
		pTempObj = new QCursor
		pTempObj.pObject = QWidget_cursor(pObject)
		return pTempObj

	Func effectiveWinId 
		return QWidget_effectiveWinId(pObject)

	Func ensurePolished 
		return QWidget_ensurePolished(pObject)

	Func focusPolicy 
		return QWidget_focusPolicy(pObject)

	Func focusProxy 
		pTempObj = new QWidget
		pTempObj.pObject = QWidget_focusProxy(pObject)
		return pTempObj

	Func focusWidget 
		pTempObj = new QWidget
		pTempObj.pObject = QWidget_focusWidget(pObject)
		return pTempObj

	Func font 
		pTempObj = new QFont
		pTempObj.pObject = QWidget_font(pObject)
		return pTempObj

	Func fontInfo 
		return QWidget_fontInfo(pObject)

	Func foregroundRole 
		return QWidget_foregroundRole(pObject)

	Func frameGeometry 
		pTempObj = new QRect
		pTempObj.pObject = QWidget_frameGeometry(pObject)
		return pTempObj

	Func frameSize 
		pTempObj = new QSize
		pTempObj.pObject = QWidget_frameSize(pObject)
		return pTempObj

	Func geometry 
		pTempObj = new QRect
		pTempObj.pObject = QWidget_geometry(pObject)
		return pTempObj

	Func grab P1
		pTempObj = new QPixmap
		pTempObj.pObject = QWidget_grab(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func grabGesture P1,P2
		return QWidget_grabGesture(pObject,P1,P2)

	Func grabKeyboard 
		return QWidget_grabKeyboard(pObject)

	Func grabMouse 
		return QWidget_grabMouse(pObject)

	Func grabShortcut P1,P2
		return QWidget_grabShortcut(pObject,GetObjectPointerFromRingObject(P1),P2)

	Func graphicsEffect 
		pTempObj = new QGraphicsEffect
		pTempObj.pObject = QWidget_graphicsEffect(pObject)
		return pTempObj

	Func graphicsProxyWidget 
		pTempObj = new QGraphicsProxyWidget
		pTempObj.pObject = QWidget_graphicsProxyWidget(pObject)
		return pTempObj

	Func hasFocus 
		return QWidget_hasFocus(pObject)

	Func hasMouseTracking 
		return QWidget_hasMouseTracking(pObject)

	Func height 
		return QWidget_height(pObject)

	Func heightForWidth P1
		return QWidget_heightForWidth(pObject,P1)

	Func inputMethodHints 
		return QWidget_inputMethodHints(pObject)

	Func inputMethodQuery P1
		pTempObj = new QVariant
		pTempObj.pObject = QWidget_inputMethodQuery(pObject,P1)
		return pTempObj

	Func insertAction P1,P2
		return QWidget_insertAction(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2))

	Func isActiveWindow 
		return QWidget_isActiveWindow(pObject)

	Func isAncestorOf P1
		return QWidget_isAncestorOf(pObject,GetObjectPointerFromRingObject(P1))

	Func isEnabled 
		return QWidget_isEnabled(pObject)

	Func isEnabledTo P1
		return QWidget_isEnabledTo(pObject,GetObjectPointerFromRingObject(P1))

	Func isFullScreen 
		return QWidget_isFullScreen(pObject)

	Func isHidden 
		return QWidget_isHidden(pObject)

	Func isMaximized 
		return QWidget_isMaximized(pObject)

	Func isMinimized 
		return QWidget_isMinimized(pObject)

	Func isModal 
		return QWidget_isModal(pObject)

	Func isVisible 
		return QWidget_isVisible(pObject)

	Func isVisibleTo P1
		return QWidget_isVisibleTo(pObject,GetObjectPointerFromRingObject(P1))

	Func isWindow 
		return QWidget_isWindow(pObject)

	Func isWindowModified 
		return QWidget_isWindowModified(pObject)

	Func layout 
		pTempObj = new QLayout
		pTempObj.pObject = QWidget_layout(pObject)
		return pTempObj

	Func layoutDirection 
		return QWidget_layoutDirection(pObject)

	Func locale 
		pTempObj = new QLocale
		pTempObj.pObject = QWidget_locale(pObject)
		return pTempObj

	Func mapFrom P1,P2
		pTempObj = new QPoint
		pTempObj.pObject = QWidget_mapFrom(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2))
		return pTempObj

	Func mapFromGlobal P1
		pTempObj = new QPoint
		pTempObj.pObject = QWidget_mapFromGlobal(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func mapFromParent P1
		pTempObj = new QPoint
		pTempObj.pObject = QWidget_mapFromParent(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func mapTo P1,P2
		pTempObj = new QPoint
		pTempObj.pObject = QWidget_mapTo(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2))
		return pTempObj

	Func mapToGlobal P1
		pTempObj = new QPoint
		pTempObj.pObject = QWidget_mapToGlobal(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func mapToParent P1
		pTempObj = new QPoint
		pTempObj.pObject = QWidget_mapToParent(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func mask 
		pTempObj = new QRegion
		pTempObj.pObject = QWidget_mask(pObject)
		return pTempObj

	Func maximumHeight 
		return QWidget_maximumHeight(pObject)

	Func maximumSize 
		pTempObj = new QSize
		pTempObj.pObject = QWidget_maximumSize(pObject)
		return pTempObj

	Func maximumWidth 
		return QWidget_maximumWidth(pObject)

	Func minimumHeight 
		return QWidget_minimumHeight(pObject)

	Func minimumSize 
		pTempObj = new QSize
		pTempObj.pObject = QWidget_minimumSize(pObject)
		return pTempObj

	Func minimumWidth 
		return QWidget_minimumWidth(pObject)

	Func move P1,P2
		return QWidget_move(pObject,P1,P2)

	Func nativeParentWidget 
		pTempObj = new QWidget
		pTempObj.pObject = QWidget_nativeParentWidget(pObject)
		return pTempObj

	Func nextInFocusChain 
		pTempObj = new QWidget
		pTempObj.pObject = QWidget_nextInFocusChain(pObject)
		return pTempObj

	Func normalGeometry 
		pTempObj = new QRect
		pTempObj.pObject = QWidget_normalGeometry(pObject)
		return pTempObj

	Func overrideWindowFlags P1
		return QWidget_overrideWindowFlags(pObject,P1)

	Func palette 
		return QWidget_palette(pObject)

	Func parentWidget 
		pTempObj = new QWidget
		pTempObj.pObject = QWidget_parentWidget(pObject)
		return pTempObj

	Func pos 
		pTempObj = new QPoint
		pTempObj.pObject = QWidget_pos(pObject)
		return pTempObj

	Func previousInFocusChain 
		pTempObj = new QWidget
		pTempObj.pObject = QWidget_previousInFocusChain(pObject)
		return pTempObj

	Func rect 
		pTempObj = new QRect
		pTempObj.pObject = QWidget_rect(pObject)
		return pTempObj

	Func releaseKeyboard 
		return QWidget_releaseKeyboard(pObject)

	Func releaseMouse 
		return QWidget_releaseMouse(pObject)

	Func releaseShortcut P1
		return QWidget_releaseShortcut(pObject,P1)

	Func removeAction P1
		return QWidget_removeAction(pObject,GetObjectPointerFromRingObject(P1))

	Func render P1,P2,P3,P4
		return QWidget_render(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2),GetObjectPointerFromRingObject(P3),P4)

	Func repaint 
		return QWidget_repaint(pObject)

	Func resize P1,P2
		return QWidget_resize(pObject,P1,P2)

	Func restoreGeometry P1
		return QWidget_restoreGeometry(pObject,GetObjectPointerFromRingObject(P1))

	Func saveGeometry 
		pTempObj = new QByteArray
		pTempObj.pObject = QWidget_saveGeometry(pObject)
		return pTempObj

	Func scroll P1,P2
		return QWidget_scroll(pObject,P1,P2)

	Func setAcceptDrops P1
		return QWidget_setAcceptDrops(pObject,P1)

	Func setAccessibleDescription P1
		return QWidget_setAccessibleDescription(pObject,P1)

	Func setAccessibleName P1
		return QWidget_setAccessibleName(pObject,P1)

	Func setAttribute P1,P2
		return QWidget_setAttribute(pObject,P1,P2)

	Func setAutoFillBackground P1
		return QWidget_setAutoFillBackground(pObject,P1)

	Func setBackgroundRole P1
		return QWidget_setBackgroundRole(pObject,P1)

	Func setBaseSize P1,P2
		return QWidget_setBaseSize(pObject,P1,P2)

	Func setContentsMargins P1,P2,P3,P4
		return QWidget_setContentsMargins(pObject,P1,P2,P3,P4)

	Func setContextMenuPolicy P1
		return QWidget_setContextMenuPolicy(pObject,P1)

	Func setCursor P1
		return QWidget_setCursor(pObject,GetObjectPointerFromRingObject(P1))

	Func setFixedHeight P1
		return QWidget_setFixedHeight(pObject,P1)

	Func setFixedSize P1,P2
		return QWidget_setFixedSize(pObject,P1,P2)

	Func setFixedWidth P1
		return QWidget_setFixedWidth(pObject,P1)

	Func setFocus P1
		return QWidget_setFocus(pObject,P1)

	Func setFocusPolicy P1
		return QWidget_setFocusPolicy(pObject,P1)

	Func setFocusProxy P1
		return QWidget_setFocusProxy(pObject,GetObjectPointerFromRingObject(P1))

	Func setFont P1
		return QWidget_setFont(pObject,GetObjectPointerFromRingObject(P1))

	Func setForegroundRole P1
		return QWidget_setForegroundRole(pObject,P1)

	Func setGeometry P1,P2,P3,P4
		return QWidget_setGeometry(pObject,P1,P2,P3,P4)

	Func setGraphicsEffect P1
		return QWidget_setGraphicsEffect(pObject,GetObjectPointerFromRingObject(P1))

	Func setInputMethodHints P1
		return QWidget_setInputMethodHints(pObject,P1)

	Func setLayout P1
		return QWidget_setLayout(pObject,GetObjectPointerFromRingObject(P1))

	Func setLayoutDirection P1
		return QWidget_setLayoutDirection(pObject,P1)

	Func setLocale P1
		return QWidget_setLocale(pObject,GetObjectPointerFromRingObject(P1))

	Func setMask P1
		return QWidget_setMask(pObject,GetObjectPointerFromRingObject(P1))

	Func setMaximumHeight P1
		return QWidget_setMaximumHeight(pObject,P1)

	Func setMaximumSize P1,P2
		return QWidget_setMaximumSize(pObject,P1,P2)

	Func setMaximumWidth P1
		return QWidget_setMaximumWidth(pObject,P1)

	Func setMinimumHeight P1
		return QWidget_setMinimumHeight(pObject,P1)

	Func setMinimumSize P1,P2
		return QWidget_setMinimumSize(pObject,P1,P2)

	Func setMinimumWidth P1
		return QWidget_setMinimumWidth(pObject,P1)

	Func setMouseTracking P1
		return QWidget_setMouseTracking(pObject,P1)

	Func setPalette P1
		return QWidget_setPalette(pObject,GetObjectPointerFromRingObject(P1))

	Func setParent P1
		return QWidget_setParent(pObject,GetObjectPointerFromRingObject(P1))

	Func setShortcutAutoRepeat P1,P2
		return QWidget_setShortcutAutoRepeat(pObject,P1,P2)

	Func setShortcutEnabled P1,P2
		return QWidget_setShortcutEnabled(pObject,P1,P2)

	Func setSizeIncrement P1,P2
		return QWidget_setSizeIncrement(pObject,P1,P2)

	Func setSizePolicy P1,P2
		return QWidget_setSizePolicy(pObject,P1,P2)

	Func setStatusTip P1
		return QWidget_setStatusTip(pObject,P1)

	Func setStyle P1
		return QWidget_setStyle(pObject,GetObjectPointerFromRingObject(P1))

	Func setToolTip P1
		return QWidget_setToolTip(pObject,P1)

	Func setUpdatesEnabled P1
		return QWidget_setUpdatesEnabled(pObject,P1)

	Func setWhatsThis P1
		return QWidget_setWhatsThis(pObject,P1)

	Func setWindowFilePath P1
		return QWidget_setWindowFilePath(pObject,P1)

	Func setWindowFlags P1
		return QWidget_setWindowFlags(pObject,P1)

	Func setWindowIcon P1
		return QWidget_setWindowIcon(pObject,GetObjectPointerFromRingObject(P1))

	Func setWindowIconText P1
		return QWidget_setWindowIconText(pObject,P1)

	Func setWindowModality P1
		return QWidget_setWindowModality(pObject,P1)

	Func setWindowOpacity P1
		return QWidget_setWindowOpacity(pObject,P1)

	Func setWindowRole P1
		return QWidget_setWindowRole(pObject,P1)

	Func setWindowState P1
		return QWidget_setWindowState(pObject,P1)

	Func size 
		pTempObj = new QSize
		pTempObj.pObject = QWidget_size(pObject)
		return pTempObj

	Func sizeIncrement 
		pTempObj = new QSize
		pTempObj.pObject = QWidget_sizeIncrement(pObject)
		return pTempObj

	Func sizePolicy 
		return QWidget_sizePolicy(pObject)

	Func stackUnder P1
		return QWidget_stackUnder(pObject,GetObjectPointerFromRingObject(P1))

	Func statusTip 
		return QWidget_statusTip(pObject)

	Func style 
		pTempObj = new QStyle
		pTempObj.pObject = QWidget_style(pObject)
		return pTempObj

	Func styleSheet 
		return QWidget_styleSheet(pObject)

	Func testAttribute P1
		return QWidget_testAttribute(pObject,P1)

	Func toolTip 
		return QWidget_toolTip(pObject)

	Func underMouse 
		return QWidget_underMouse(pObject)

	Func ungrabGesture P1
		return QWidget_ungrabGesture(pObject,P1)

	Func unsetCursor 
		return QWidget_unsetCursor(pObject)

	Func unsetLayoutDirection 
		return QWidget_unsetLayoutDirection(pObject)

	Func unsetLocale 
		return QWidget_unsetLocale(pObject)

	Func update P1,P2,P3,P4
		return QWidget_update(pObject,P1,P2,P3,P4)

	Func updateGeometry 
		return QWidget_updateGeometry(pObject)

	Func updatesEnabled 
		return QWidget_updatesEnabled(pObject)

	Func visibleRegion 
		pTempObj = new QRegion
		pTempObj.pObject = QWidget_visibleRegion(pObject)
		return pTempObj

	Func whatsThis 
		return QWidget_whatsThis(pObject)

	Func width 
		return QWidget_width(pObject)

	Func winId 
		return QWidget_winId(pObject)

	Func window 
		pTempObj = new QWidget
		pTempObj.pObject = QWidget_window(pObject)
		return pTempObj

	Func windowFilePath 
		return QWidget_windowFilePath(pObject)

	Func windowFlags 
		return QWidget_windowFlags(pObject)

	Func windowHandle 
		pTempObj = new QWindow
		pTempObj.pObject = QWidget_windowHandle(pObject)
		return pTempObj

	Func windowIcon 
		pTempObj = new QIcon
		pTempObj.pObject = QWidget_windowIcon(pObject)
		return pTempObj

	Func windowIconText 
		return QWidget_windowIconText(pObject)

	Func windowModality 
		return QWidget_windowModality(pObject)

	Func windowOpacity 
		return QWidget_windowOpacity(pObject)

	Func windowRole 
		return QWidget_windowRole(pObject)

	Func windowState 
		return QWidget_windowState(pObject)

	Func windowTitle 
		return QWidget_windowTitle(pObject)

	Func windowType 
		return QWidget_windowType(pObject)

	Func x 
		return QWidget_x(pObject)

	Func y 
		return QWidget_y(pObject)

	Func close 
		return QWidget_close(pObject)

	Func hide 
		return QWidget_hide(pObject)

	Func lower 
		return QWidget_lower(pObject)

	Func raise 
		return QWidget_raise(pObject)

	Func setDisabled P1
		return QWidget_setDisabled(pObject,P1)

	Func setEnabled P1
		return QWidget_setEnabled(pObject,P1)

	Func setHidden P1
		return QWidget_setHidden(pObject,P1)

	Func setStyleSheet P1
		return QWidget_setStyleSheet(pObject,P1)

	Func setWindowModified P1
		return QWidget_setWindowModified(pObject,P1)

	Func setWindowTitle P1
		return QWidget_setWindowTitle(pObject,P1)

	Func show 
		return QWidget_show(pObject)

	Func showFullScreen 
		return QWidget_showFullScreen(pObject)

	Func showMaximized 
		return QWidget_showMaximized(pObject)

	Func showMinimized 
		return QWidget_showMinimized(pObject)

	Func showNormal 
		return QWidget_showNormal(pObject)

	Func find P1
		pTempObj = new QWidget
		pTempObj.pObject = QWidget_find(pObject,P1)
		return pTempObj

	Func keyboardGrabber 
		pTempObj = new QWidget
		pTempObj.pObject = QWidget_keyboardGrabber(pObject)
		return pTempObj

	Func mouseGrabber 
		pTempObj = new QWidget
		pTempObj.pObject = QWidget_mouseGrabber(pObject)
		return pTempObj

	Func setTabOrder P1,P2
		return QWidget_setTabOrder(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2))

	Func createWindowContainer P1,P2,P3
		pTempObj = new QWidget
		pTempObj.pObject = QWidget_createWindowContainer(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2),P3)
		return pTempObj

Class QLabel from QFrame

	pObject

	Func init P1
		pObject = QLabel_new(GetObjectPointerFromRingObject(P1))
		return self

	Func delete
		pObject = QLabel_delete(pObject)

	Func ObjectPointer
		return pObject

	Func picture 
		pTempObj = new QPicture
		pTempObj.pObject = QLabel_picture(pObject)
		return pTempObj

	Func pixmap 
		pTempObj = new QPixmap
		pTempObj.pObject = QLabel_pixmap(pObject)
		return pTempObj

	Func alignment 
		return QLabel_alignment(pObject)

	Func buddy 
		pTempObj = new QWidget
		pTempObj.pObject = QLabel_buddy(pObject)
		return pTempObj

	Func hasScaledContents 
		return QLabel_hasScaledContents(pObject)

	Func hasSelectedText 
		return QLabel_hasSelectedText(pObject)

	Func indent 
		return QLabel_indent(pObject)

	Func margin 
		return QLabel_margin(pObject)

	Func movie 
		pTempObj = new QMovie
		pTempObj.pObject = QLabel_movie(pObject)
		return pTempObj

	Func openExternalLinks 
		return QLabel_openExternalLinks(pObject)

	Func selectedText 
		return QLabel_selectedText(pObject)

	Func selectionStart 
		return QLabel_selectionStart(pObject)

	Func setAlignment P1
		return QLabel_setAlignment(pObject,P1)

	Func setBuddy P1
		return QLabel_setBuddy(pObject,GetObjectPointerFromRingObject(P1))

	Func setIndent P1
		return QLabel_setIndent(pObject,P1)

	Func setMargin P1
		return QLabel_setMargin(pObject,P1)

	Func setOpenExternalLinks P1
		return QLabel_setOpenExternalLinks(pObject,P1)

	Func setScaledContents P1
		return QLabel_setScaledContents(pObject,P1)

	Func setSelection P1,P2
		return QLabel_setSelection(pObject,P1,P2)

	Func setTextFormat P1
		return QLabel_setTextFormat(pObject,P1)

	Func setTextInteractionFlags P1
		return QLabel_setTextInteractionFlags(pObject,P1)

	Func setWordWrap P1
		return QLabel_setWordWrap(pObject,P1)

	Func text 
		return QLabel_text(pObject)

	Func textFormat 
		return QLabel_textFormat(pObject)

	Func textInteractionFlags 
		return QLabel_textInteractionFlags(pObject)

	Func wordWrap 
		return QLabel_wordWrap(pObject)

	Func clear 
		return QLabel_clear(pObject)

	Func setMovie P1
		return QLabel_setMovie(pObject,GetObjectPointerFromRingObject(P1))

	Func setNum P1
		return QLabel_setNum(pObject,P1)

	Func setPicture P1
		return QLabel_setPicture(pObject,GetObjectPointerFromRingObject(P1))

	Func setPixmap P1
		return QLabel_setPixmap(pObject,GetObjectPointerFromRingObject(P1))

	Func setText P1
		return QLabel_setText(pObject,P1)

Class QPushButton from QAbstractButton

	pObject

	Func init P1
		pObject = QPushButton_new(GetObjectPointerFromRingObject(P1))
		return self

	Func delete
		pObject = QPushButton_delete(pObject)

	Func ObjectPointer
		return pObject

	Func setText P1
		return QPushButton_setText(pObject,P1)

	Func setClickEvent P1
		return QPushButton_setClickEvent(pObject,P1)

	Func setIcon P1
		return QPushButton_setIcon(pObject,GetObjectPointerFromRingObject(P1))

	Func setIconSize P1
		return QPushButton_setIconSize(pObject,GetObjectPointerFromRingObject(P1))

	Func getClickEvent 
		return QPushButton_getClickEvent(pObject)

Class QLineEdit from QWidget

	pObject

	Func init P1
		pObject = QLineEdit_new(GetObjectPointerFromRingObject(P1))
		return self

	Func delete
		pObject = QLineEdit_delete(pObject)

	Func ObjectPointer
		return pObject

	Func alignment 
		return QLineEdit_alignment(pObject)

	Func backspace 
		return QLineEdit_backspace(pObject)

	Func completer 
		pTempObj = new QCompleter
		pTempObj.pObject = QLineEdit_completer(pObject)
		return pTempObj

	Func createStandardContextMenu 
		pTempObj = new QMenu
		pTempObj.pObject = QLineEdit_createStandardContextMenu(pObject)
		return pTempObj

	Func cursorBackward P1,P2
		return QLineEdit_cursorBackward(pObject,P1,P2)

	Func cursorForward P1,P2
		return QLineEdit_cursorForward(pObject,P1,P2)

	Func cursorMoveStyle 
		return QLineEdit_cursorMoveStyle(pObject)

	Func cursorPosition 
		return QLineEdit_cursorPosition(pObject)

	Func cursorPositionAt P1
		return QLineEdit_cursorPositionAt(pObject,GetObjectPointerFromRingObject(P1))

	Func cursorWordBackward P1
		return QLineEdit_cursorWordBackward(pObject,P1)

	Func cursorWordForward P1
		return QLineEdit_cursorWordForward(pObject,P1)

	Func del 
		return QLineEdit_del(pObject)

	Func deselect 
		return QLineEdit_deselect(pObject)

	Func displayText 
		return QLineEdit_displayText(pObject)

	Func dragEnabled 
		return QLineEdit_dragEnabled(pObject)

	Func echoMode 
		return QLineEdit_echoMode(pObject)

	Func endtext P1
		return QLineEdit_end(pObject,P1)

	Func hasAcceptableInput 
		return QLineEdit_hasAcceptableInput(pObject)

	Func hasFrame 
		return QLineEdit_hasFrame(pObject)

	Func hasSelectedText 
		return QLineEdit_hasSelectedText(pObject)

	Func home P1
		return QLineEdit_home(pObject,P1)

	Func inputMask 
		return QLineEdit_inputMask(pObject)

	Func insert P1
		return QLineEdit_insert(pObject,P1)

	Func isModified 
		return QLineEdit_isModified(pObject)

	Func isReadOnly 
		return QLineEdit_isReadOnly(pObject)

	Func isRedoAvailable 
		return QLineEdit_isRedoAvailable(pObject)

	Func isUndoAvailable 
		return QLineEdit_isUndoAvailable(pObject)

	Func maxLength 
		return QLineEdit_maxLength(pObject)

	Func placeholderText 
		return QLineEdit_placeholderText(pObject)

	Func selectedText 
		return QLineEdit_selectedText(pObject)

	Func selectionStart 
		return QLineEdit_selectionStart(pObject)

	Func setAlignment P1
		return QLineEdit_setAlignment(pObject,P1)

	Func setCompleter P1
		return QLineEdit_setCompleter(pObject,GetObjectPointerFromRingObject(P1))

	Func setCursorMoveStyle P1
		return QLineEdit_setCursorMoveStyle(pObject,P1)

	Func setCursorPosition P1
		return QLineEdit_setCursorPosition(pObject,P1)

	Func setDragEnabled P1
		return QLineEdit_setDragEnabled(pObject,P1)

	Func setEchoMode P1
		return QLineEdit_setEchoMode(pObject,P1)

	Func setFrame P1
		return QLineEdit_setFrame(pObject,P1)

	Func setInputMask P1
		return QLineEdit_setInputMask(pObject,P1)

	Func setMaxLength P1
		return QLineEdit_setMaxLength(pObject,P1)

	Func setModified P1
		return QLineEdit_setModified(pObject,P1)

	Func setPlaceholderText P1
		return QLineEdit_setPlaceholderText(pObject,P1)

	Func setReadOnly P1
		return QLineEdit_setReadOnly(pObject,P1)

	Func setSelection P1,P2
		return QLineEdit_setSelection(pObject,P1,P2)

	Func setTextMargins P1,P2,P3,P4
		return QLineEdit_setTextMargins(pObject,P1,P2,P3,P4)

	Func setValidator P1
		return QLineEdit_setValidator(pObject,GetObjectPointerFromRingObject(P1))

	Func text 
		return QLineEdit_text(pObject)

	Func textMargins 
		return QLineEdit_textMargins(pObject)

	Func validator 
		return QLineEdit_validator(pObject)

	Func clear 
		return QLineEdit_clear(pObject)

	Func copy 
		return QLineEdit_copy(pObject)

	Func cut 
		return QLineEdit_cut(pObject)

	Func paste 
		return QLineEdit_paste(pObject)

	Func redo 
		return QLineEdit_redo(pObject)

	Func selectAll 
		return QLineEdit_selectAll(pObject)

	Func setText P1
		return QLineEdit_setText(pObject,P1)

	Func undo 
		return QLineEdit_undo(pObject)

	Func setTextChangedEvent P1
		return QLineEdit_setTextChangedEvent(pObject,P1)

	Func setcursorPositionChangedEvent P1
		return QLineEdit_setcursorPositionChangedEvent(pObject,P1)

	Func seteditingFinishedEvent P1
		return QLineEdit_seteditingFinishedEvent(pObject,P1)

	Func setreturnPressedEvent P1
		return QLineEdit_setreturnPressedEvent(pObject,P1)

	Func setselectionChangedEvent P1
		return QLineEdit_setselectionChangedEvent(pObject,P1)

	Func settextEditedEvent P1
		return QLineEdit_settextEditedEvent(pObject,P1)

	Func getTextChangedEvent 
		return QLineEdit_getTextChangedEvent(pObject)

	Func getcursorPositionChangedEvent 
		return QLineEdit_getcursorPositionChangedEvent(pObject)

	Func geteditingFinishedEvent 
		return QLineEdit_geteditingFinishedEvent(pObject)

	Func getreturnPressedEvent 
		return QLineEdit_getreturnPressedEvent(pObject)

	Func getselectionChangedEvent 
		return QLineEdit_getselectionChangedEvent(pObject)

	Func gettextEditedEvent 
		return QLineEdit_gettextEditedEvent(pObject)

Class QVBoxLayout from QBoxLayout

	pObject

	Func init 
		pObject = QVBoxLayout_new()
		return self

	Func delete
		pObject = QVBoxLayout_delete(pObject)

	Func ObjectPointer
		return pObject

	Func addWidget P1
		return QVBoxLayout_addWidget(pObject,GetObjectPointerFromRingObject(P1))

	Func addLayout P1
		return QVBoxLayout_addLayout(pObject,GetObjectPointerFromRingObject(P1))

Class QHBoxLayout from QBoxLayout

	pObject

	Func init 
		pObject = QHBoxLayout_new()
		return self

	Func delete
		pObject = QHBoxLayout_delete(pObject)

	Func ObjectPointer
		return pObject

	Func addWidget P1
		return QHBoxLayout_addWidget(pObject,GetObjectPointerFromRingObject(P1))

	Func addLayout P1
		return QHBoxLayout_addLayout(pObject,GetObjectPointerFromRingObject(P1))

Class QTextEdit from QAbstractScrollArea

	pObject

	Func init P1
		pObject = QTextEdit_new(GetObjectPointerFromRingObject(P1))
		return self

	Func delete
		pObject = QTextEdit_delete(pObject)

	Func ObjectPointer
		return pObject

	Func setTabStopDistance P1
		return QTextEdit_setTabStopDistance(pObject,P1)

	Func tabStopDistance 
		return QTextEdit_tabStopDistance(pObject)

	Func acceptRichText 
		return QTextEdit_acceptRichText(pObject)

	Func alignment 
		return QTextEdit_alignment(pObject)

	Func anchorAt P1
		return QTextEdit_anchorAt(pObject,GetObjectPointerFromRingObject(P1))

	Func canPaste 
		return QTextEdit_canPaste(pObject)

	Func currentCharFormat 
		pTempObj = new QTextCharFormat
		pTempObj.pObject = QTextEdit_currentCharFormat(pObject)
		return pTempObj

	Func currentFont 
		pTempObj = new QFont
		pTempObj.pObject = QTextEdit_currentFont(pObject)
		return pTempObj

	Func cursorForPosition P1
		pTempObj = new QTextCursor
		pTempObj.pObject = QTextEdit_cursorForPosition(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func cursorRect 
		pTempObj = new QRect
		pTempObj.pObject = QTextEdit_cursorRect(pObject)
		return pTempObj

	Func cursorWidth 
		return QTextEdit_cursorWidth(pObject)

	Func document 
		pTempObj = new QTextDocument
		pTempObj.pObject = QTextEdit_document(pObject)
		return pTempObj

	Func documentTitle 
		return QTextEdit_documentTitle(pObject)

	Func ensureCursorVisible 
		return QTextEdit_ensureCursorVisible(pObject)

	Func find P1,P2
		return QTextEdit_find(pObject,P1,P2)

	Func fontFamily 
		return QTextEdit_fontFamily(pObject)

	Func fontItalic 
		return QTextEdit_fontItalic(pObject)

	Func fontPointSize 
		return QTextEdit_fontPointSize(pObject)

	Func fontUnderline 
		return QTextEdit_fontUnderline(pObject)

	Func fontWeight 
		return QTextEdit_fontWeight(pObject)

	Func isReadOnly 
		return QTextEdit_isReadOnly(pObject)

	Func isUndoRedoEnabled 
		return QTextEdit_isUndoRedoEnabled(pObject)

	Func lineWrapColumnOrWidth 
		return QTextEdit_lineWrapColumnOrWidth(pObject)

	Func loadResource P1,P2
		pTempObj = new QVariant
		pTempObj.pObject = QTextEdit_loadResource(pObject,P1,GetObjectPointerFromRingObject(P2))
		return pTempObj

	Func mergeCurrentCharFormat P1
		return QTextEdit_mergeCurrentCharFormat(pObject,GetObjectPointerFromRingObject(P1))

	Func moveCursor P1,P2
		return QTextEdit_moveCursor(pObject,P1,P2)

	Func overwriteMode 
		return QTextEdit_overwriteMode(pObject)

	Func setAcceptRichText P1
		return QTextEdit_setAcceptRichText(pObject,P1)

	Func setCurrentCharFormat P1
		return QTextEdit_setCurrentCharFormat(pObject,GetObjectPointerFromRingObject(P1))

	Func setCursorWidth P1
		return QTextEdit_setCursorWidth(pObject,P1)

	Func setDocument P1
		return QTextEdit_setDocument(pObject,GetObjectPointerFromRingObject(P1))

	Func setDocumentTitle P1
		return QTextEdit_setDocumentTitle(pObject,P1)

	Func setLineWrapColumnOrWidth P1
		return QTextEdit_setLineWrapColumnOrWidth(pObject,P1)

	Func setLineWrapMode P1
		return QTextEdit_setLineWrapMode(pObject,P1)

	Func setOverwriteMode P1
		return QTextEdit_setOverwriteMode(pObject,P1)

	Func setReadOnly P1
		return QTextEdit_setReadOnly(pObject,P1)

	Func setTabChangesFocus P1
		return QTextEdit_setTabChangesFocus(pObject,P1)

	Func setTextCursor P1
		return QTextEdit_setTextCursor(pObject,GetObjectPointerFromRingObject(P1))

	Func setTextInteractionFlags P1
		return QTextEdit_setTextInteractionFlags(pObject,P1)

	Func setUndoRedoEnabled P1
		return QTextEdit_setUndoRedoEnabled(pObject,P1)

	Func setWordWrapMode P1
		return QTextEdit_setWordWrapMode(pObject,P1)

	Func tabChangesFocus 
		return QTextEdit_tabChangesFocus(pObject)

	Func textBackgroundColor 
		pTempObj = new QColor
		pTempObj.pObject = QTextEdit_textBackgroundColor(pObject)
		return pTempObj

	Func textColor 
		pTempObj = new QColor
		pTempObj.pObject = QTextEdit_textColor(pObject)
		return pTempObj

	Func textCursor 
		pTempObj = new QTextCursor
		pTempObj.pObject = QTextEdit_textCursor(pObject)
		return pTempObj

	Func textInteractionFlags 
		return QTextEdit_textInteractionFlags(pObject)

	Func toHtml 
		return QTextEdit_toHtml(pObject)

	Func toPlainText 
		return QTextEdit_toPlainText(pObject)

	Func wordWrapMode 
		return QTextEdit_wordWrapMode(pObject)

	Func append P1
		return QTextEdit_append(pObject,P1)

	Func clear 
		return QTextEdit_clear(pObject)

	Func copy 
		return QTextEdit_copy(pObject)

	Func cut 
		return QTextEdit_cut(pObject)

	Func insertHtml P1
		return QTextEdit_insertHtml(pObject,P1)

	Func insertPlainText P1
		return QTextEdit_insertPlainText(pObject,P1)

	Func paste 
		return QTextEdit_paste(pObject)

	Func redo 
		return QTextEdit_redo(pObject)

	Func scrollToAnchor P1
		return QTextEdit_scrollToAnchor(pObject,P1)

	Func selectAll 
		return QTextEdit_selectAll(pObject)

	Func setAlignment P1
		return QTextEdit_setAlignment(pObject,P1)

	Func setCurrentFont P1
		return QTextEdit_setCurrentFont(pObject,GetObjectPointerFromRingObject(P1))

	Func setFontFamily P1
		return QTextEdit_setFontFamily(pObject,P1)

	Func setFontItalic P1
		return QTextEdit_setFontItalic(pObject,P1)

	Func setFontPointSize P1
		return QTextEdit_setFontPointSize(pObject,P1)

	Func setFontUnderline P1
		return QTextEdit_setFontUnderline(pObject,P1)

	Func setFontWeight P1
		return QTextEdit_setFontWeight(pObject,P1)

	Func setHtml P1
		return QTextEdit_setHtml(pObject,P1)

	Func setPlainText P1
		return QTextEdit_setPlainText(pObject,P1)

	Func setText P1
		return QTextEdit_setText(pObject,P1)

	Func setTextBackgroundColor P1
		return QTextEdit_setTextBackgroundColor(pObject,GetObjectPointerFromRingObject(P1))

	Func setTextColor P1
		return QTextEdit_setTextColor(pObject,GetObjectPointerFromRingObject(P1))

	Func undo 
		return QTextEdit_undo(pObject)

	Func zoomIn P1
		return QTextEdit_zoomIn(pObject,P1)

	Func zoomOut P1
		return QTextEdit_zoomOut(pObject,P1)

	Func setcopyAvailableEvent P1
		return QTextEdit_setcopyAvailableEvent(pObject,P1)

	Func setcurrentCharFormatChangedEvent P1
		return QTextEdit_setcurrentCharFormatChangedEvent(pObject,P1)

	Func setcursorPositionChangedEvent P1
		return QTextEdit_setcursorPositionChangedEvent(pObject,P1)

	Func setredoAvailableEvent P1
		return QTextEdit_setredoAvailableEvent(pObject,P1)

	Func setselectionChangedEvent P1
		return QTextEdit_setselectionChangedEvent(pObject,P1)

	Func settextChangedEvent P1
		return QTextEdit_settextChangedEvent(pObject,P1)

	Func setundoAvailableEvent P1
		return QTextEdit_setundoAvailableEvent(pObject,P1)

	Func getcopyAvailableEvent 
		return QTextEdit_getcopyAvailableEvent(pObject)

	Func getcurrentCharFormatChangedEvent 
		return QTextEdit_getcurrentCharFormatChangedEvent(pObject)

	Func getcursorPositionChangedEvent 
		return QTextEdit_getcursorPositionChangedEvent(pObject)

	Func getredoAvailableEvent 
		return QTextEdit_getredoAvailableEvent(pObject)

	Func getselectionChangedEvent 
		return QTextEdit_getselectionChangedEvent(pObject)

	Func gettextChangedEvent 
		return QTextEdit_gettextChangedEvent(pObject)

	Func getundoAvailableEvent 
		return QTextEdit_getundoAvailableEvent(pObject)

	Func cyanline 
		return QTextEdit_cyanline(pObject)

	Func setactivelinecolor P1
		return QTextEdit_setactivelinecolor(pObject,GetObjectPointerFromRingObject(P1))

Class QListWidget from QListView

	pObject

	Func init P1
		pObject = QListWidget_new(GetObjectPointerFromRingObject(P1))
		return self

	Func delete
		pObject = QListWidget_delete(pObject)

	Func ObjectPointer
		return pObject

	Func addItem P1
		return QListWidget_addItem(pObject,P1)

	Func count 
		return QListWidget_count(pObject)

	Func currentRow 
		return QListWidget_currentRow(pObject)

	Func editItem P1
		return QListWidget_editItem(pObject,GetObjectPointerFromRingObject(P1))

	Func insertItem P1,P2
		return QListWidget_insertItem(pObject,P1,P2)

	Func isSortingEnabled 
		return QListWidget_isSortingEnabled(pObject)

	Func item P1
		pTempObj = new QListWidgetItem
		pTempObj.pObject = QListWidget_item(pObject,P1)
		return pTempObj

	Func itemAt P1,P2
		pTempObj = new QListWidgetItem
		pTempObj.pObject = QListWidget_itemAt(pObject,P1,P2)
		return pTempObj

	Func itemWidget P1
		pTempObj = new QWidget
		pTempObj.pObject = QListWidget_itemWidget(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func openPersistentEditor P1
		return QListWidget_openPersistentEditor(pObject,GetObjectPointerFromRingObject(P1))

	Func removeItemWidget P1
		return QListWidget_removeItemWidget(pObject,GetObjectPointerFromRingObject(P1))

	Func row P1
		return QListWidget_row(pObject,GetObjectPointerFromRingObject(P1))

	Func setCurrentItem P1,P2
		return QListWidget_setCurrentItem(pObject,GetObjectPointerFromRingObject(P1),P2)

	Func setCurrentRow P1,P2
		return QListWidget_setCurrentRow(pObject,P1,P2)

	Func setItemWidget P1,P2
		return QListWidget_setItemWidget(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2))

	Func setSortingEnabled P1
		return QListWidget_setSortingEnabled(pObject,P1)

	Func sortItems P1
		return QListWidget_sortItems(pObject,P1)

	Func takeItem P1
		pTempObj = new QListWidgetItem
		pTempObj.pObject = QListWidget_takeItem(pObject,P1)
		return pTempObj

	Func visualItemRect P1
		pTempObj = new QRect
		pTempObj.pObject = QListWidget_visualItemRect(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func clear 
		return QListWidget_clear(pObject)

	Func scrollToItem P1,P2
		return QListWidget_scrollToItem(pObject,GetObjectPointerFromRingObject(P1),P2)

	Func setcurrentItemChangedEvent P1
		return QListWidget_setcurrentItemChangedEvent(pObject,P1)

	Func setcurrentRowChangedEvent P1
		return QListWidget_setcurrentRowChangedEvent(pObject,P1)

	Func setcurrentTextChangedEvent P1
		return QListWidget_setcurrentTextChangedEvent(pObject,P1)

	Func setitemActivatedEvent P1
		return QListWidget_setitemActivatedEvent(pObject,P1)

	Func setitemChangedEvent P1
		return QListWidget_setitemChangedEvent(pObject,P1)

	Func setitemClickedEvent P1
		return QListWidget_setitemClickedEvent(pObject,P1)

	Func setitemDoubleClickedEvent P1
		return QListWidget_setitemDoubleClickedEvent(pObject,P1)

	Func setitemEnteredEvent P1
		return QListWidget_setitemEnteredEvent(pObject,P1)

	Func setitemPressedEvent P1
		return QListWidget_setitemPressedEvent(pObject,P1)

	Func setitemSelectionChangedEvent P1
		return QListWidget_setitemSelectionChangedEvent(pObject,P1)

	Func getcurrentItemChangedEvent 
		return QListWidget_getcurrentItemChangedEvent(pObject)

	Func getcurrentRowChangedEvent 
		return QListWidget_getcurrentRowChangedEvent(pObject)

	Func getcurrentTextChangedEvent 
		return QListWidget_getcurrentTextChangedEvent(pObject)

	Func getitemActivatedEvent 
		return QListWidget_getitemActivatedEvent(pObject)

	Func getitemChangedEvent 
		return QListWidget_getitemChangedEvent(pObject)

	Func getitemClickedEvent 
		return QListWidget_getitemClickedEvent(pObject)

	Func getitemDoubleClickedEvent 
		return QListWidget_getitemDoubleClickedEvent(pObject)

	Func getitemEnteredEvent 
		return QListWidget_getitemEnteredEvent(pObject)

	Func getitemPressedEvent 
		return QListWidget_getitemPressedEvent(pObject)

	Func getitemSelectionChangedEvent 
		return QListWidget_getitemSelectionChangedEvent(pObject)

Class QTreeView from QAbstractItemView

	pObject

	Func init P1
		pObject = QTreeView_new(GetObjectPointerFromRingObject(P1))
		return self

	Func delete
		pObject = QTreeView_delete(pObject)

	Func ObjectPointer
		return pObject

	Func allColumnsShowFocus 
		return QTreeView_allColumnsShowFocus(pObject)

	Func autoExpandDelay 
		return QTreeView_autoExpandDelay(pObject)

	Func columnAt P1
		return QTreeView_columnAt(pObject,P1)

	Func columnViewportPosition P1
		return QTreeView_columnViewportPosition(pObject,P1)

	Func columnWidth P1
		return QTreeView_columnWidth(pObject,P1)

	Func expandsOnDoubleClick 
		return QTreeView_expandsOnDoubleClick(pObject)

	Func header 
		pTempObj = new QHeaderView
		pTempObj.pObject = QTreeView_header(pObject)
		return pTempObj

	Func indentation 
		return QTreeView_indentation(pObject)

	Func indexAbove P1
		pTempObj = new QModelIndex
		pTempObj.pObject = QTreeView_indexAbove(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func indexBelow P1
		pTempObj = new QModelIndex
		pTempObj.pObject = QTreeView_indexBelow(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func isAnimated 
		return QTreeView_isAnimated(pObject)

	Func isColumnHidden P1
		return QTreeView_isColumnHidden(pObject,P1)

	Func isExpanded P1
		return QTreeView_isExpanded(pObject,GetObjectPointerFromRingObject(P1))

	Func isFirstColumnSpanned P1,P2
		return QTreeView_isFirstColumnSpanned(pObject,P1,GetObjectPointerFromRingObject(P2))

	Func isHeaderHidden 
		return QTreeView_isHeaderHidden(pObject)

	Func isRowHidden P1,P2
		return QTreeView_isRowHidden(pObject,P1,GetObjectPointerFromRingObject(P2))

	Func isSortingEnabled 
		return QTreeView_isSortingEnabled(pObject)

	Func itemsExpandable 
		return QTreeView_itemsExpandable(pObject)

	Func rootIsDecorated 
		return QTreeView_rootIsDecorated(pObject)

	Func setAllColumnsShowFocus P1
		return QTreeView_setAllColumnsShowFocus(pObject,P1)

	Func setAnimated P1
		return QTreeView_setAnimated(pObject,P1)

	Func setAutoExpandDelay P1
		return QTreeView_setAutoExpandDelay(pObject,P1)

	Func setColumnHidden P1,P2
		return QTreeView_setColumnHidden(pObject,P1,P2)

	Func setColumnWidth P1,P2
		return QTreeView_setColumnWidth(pObject,P1,P2)

	Func setExpanded P1,P2
		return QTreeView_setExpanded(pObject,GetObjectPointerFromRingObject(P1),P2)

	Func setExpandsOnDoubleClick P1
		return QTreeView_setExpandsOnDoubleClick(pObject,P1)

	Func setFirstColumnSpanned P1,P2,P3
		return QTreeView_setFirstColumnSpanned(pObject,P1,GetObjectPointerFromRingObject(P2),P3)

	Func setHeader P1
		return QTreeView_setHeader(pObject,GetObjectPointerFromRingObject(P1))

	Func setHeaderHidden P1
		return QTreeView_setHeaderHidden(pObject,P1)

	Func setIndentation P1
		return QTreeView_setIndentation(pObject,P1)

	Func setItemsExpandable P1
		return QTreeView_setItemsExpandable(pObject,P1)

	Func setRootIsDecorated P1
		return QTreeView_setRootIsDecorated(pObject,P1)

	Func setRowHidden P1,P2,P3
		return QTreeView_setRowHidden(pObject,P1,GetObjectPointerFromRingObject(P2),P3)

	Func setSortingEnabled P1
		return QTreeView_setSortingEnabled(pObject,P1)

	Func setUniformRowHeights P1
		return QTreeView_setUniformRowHeights(pObject,P1)

	Func setWordWrap P1
		return QTreeView_setWordWrap(pObject,P1)

	Func sortByColumn P1,P2
		return QTreeView_sortByColumn(pObject,P1,P2)

	Func uniformRowHeights 
		return QTreeView_uniformRowHeights(pObject)

	Func wordWrap 
		return QTreeView_wordWrap(pObject)

	Func dataChanged P1,P2
		return QTreeView_dataChanged(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2))

	Func indexAt P1
		pTempObj = new QModelIndex
		pTempObj.pObject = QTreeView_indexAt(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func keyboardSearch P1
		return QTreeView_keyboardSearch(pObject,P1)

	Func reset 
		return QTreeView_reset(pObject)

	Func scrollTo P1,P2
		return QTreeView_scrollTo(pObject,GetObjectPointerFromRingObject(P1),P2)

	Func selectAll 
		return QTreeView_selectAll(pObject)

	Func setModel P1
		return QTreeView_setModel(pObject,GetObjectPointerFromRingObject(P1))

	Func setRootIndex P1
		return QTreeView_setRootIndex(pObject,GetObjectPointerFromRingObject(P1))

	Func setSelectionModel P1
		return QTreeView_setSelectionModel(pObject,GetObjectPointerFromRingObject(P1))

	Func visualRect P1
		pTempObj = new QRect
		pTempObj.pObject = QTreeView_visualRect(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func collapse P1
		return QTreeView_collapse(pObject,GetObjectPointerFromRingObject(P1))

	Func collapseAll 
		return QTreeView_collapseAll(pObject)

	Func expand P1
		return QTreeView_expand(pObject,GetObjectPointerFromRingObject(P1))

	Func expandAll 
		return QTreeView_expandAll(pObject)

	Func expandToDepth P1
		return QTreeView_expandToDepth(pObject,P1)

	Func hideColumn P1
		return QTreeView_hideColumn(pObject,P1)

	Func resizeColumnToContents P1
		return QTreeView_resizeColumnToContents(pObject,P1)

	Func showColumn P1
		return QTreeView_showColumn(pObject,P1)

	Func setcollapsedEvent P1
		return QTreeView_setcollapsedEvent(pObject,P1)

	Func setexpandedEvent P1
		return QTreeView_setexpandedEvent(pObject,P1)

	Func setactivatedEvent P1
		return QTreeView_setactivatedEvent(pObject,P1)

	Func setclickedEvent P1
		return QTreeView_setclickedEvent(pObject,P1)

	Func setdoubleClickedEvent P1
		return QTreeView_setdoubleClickedEvent(pObject,P1)

	Func setenteredEvent P1
		return QTreeView_setenteredEvent(pObject,P1)

	Func setpressedEvent P1
		return QTreeView_setpressedEvent(pObject,P1)

	Func setviewportEnteredEvent P1
		return QTreeView_setviewportEnteredEvent(pObject,P1)

	Func getcollapsedEvent 
		return QTreeView_getcollapsedEvent(pObject)

	Func getexpandedEvent 
		return QTreeView_getexpandedEvent(pObject)

	Func getactivatedEvent 
		return QTreeView_getactivatedEvent(pObject)

	Func getclickedEvent 
		return QTreeView_getclickedEvent(pObject)

	Func getdoubleClickedEvent 
		return QTreeView_getdoubleClickedEvent(pObject)

	Func getenteredEvent 
		return QTreeView_getenteredEvent(pObject)

	Func getpressedEvent 
		return QTreeView_getpressedEvent(pObject)

	Func getviewportEnteredEvent 
		return QTreeView_getviewportEnteredEvent(pObject)

Class QFileSystemModel

	pObject

	Func init 
		pObject = QFileSystemModel_new()
		return self

	Func delete
		pObject = QFileSystemModel_delete(pObject)

	Func ObjectPointer
		return pObject

	Func fileIcon P1
		pTempObj = new QIcon
		pTempObj.pObject = QFileSystemModel_fileIcon(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func fileInfo P1
		pTempObj = new QFileInfo
		pTempObj.pObject = QFileSystemModel_fileInfo(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func fileName P1
		return QFileSystemModel_fileName(pObject,GetObjectPointerFromRingObject(P1))

	Func filePath P1
		return QFileSystemModel_filePath(pObject,GetObjectPointerFromRingObject(P1))

	Func filter 
		return QFileSystemModel_filter(pObject)

	Func iconProvider 
		return QFileSystemModel_iconProvider(pObject)

	Func index P1,P2
		pTempObj = new QModelIndex
		pTempObj.pObject = QFileSystemModel_index(pObject,P1,P2)
		return pTempObj

	Func isDir P1
		return QFileSystemModel_isDir(pObject,GetObjectPointerFromRingObject(P1))

	Func isReadOnly 
		return QFileSystemModel_isReadOnly(pObject)

	Func lastModified P1
		pTempObj = new QDateTime
		pTempObj.pObject = QFileSystemModel_lastModified(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func mkdir P1,P2
		pTempObj = new QModelIndex
		pTempObj.pObject = QFileSystemModel_mkdir(pObject,GetObjectPointerFromRingObject(P1),P2)
		return pTempObj

	Func myComputer P1
		pTempObj = new QVariant
		pTempObj.pObject = QFileSystemModel_myComputer(pObject,P1)
		return pTempObj

	Func nameFilterDisables 
		return QFileSystemModel_nameFilterDisables(pObject)

	Func nameFilters 
		pTempObj = new QStringList
		pTempObj.pObject = QFileSystemModel_nameFilters(pObject)
		return pTempObj

	Func permissions P1
		return QFileSystemModel_permissions(pObject,GetObjectPointerFromRingObject(P1))

	Func remove P1
		return QFileSystemModel_remove(pObject,GetObjectPointerFromRingObject(P1))

	Func resolveSymlinks 
		return QFileSystemModel_resolveSymlinks(pObject)

	Func rmdir P1
		return QFileSystemModel_rmdir(pObject,GetObjectPointerFromRingObject(P1))

	Func rootDirectory 
		pTempObj = new QDir
		pTempObj.pObject = QFileSystemModel_rootDirectory(pObject)
		return pTempObj

	Func rootPath 
		return QFileSystemModel_rootPath(pObject)

	Func setFilter P1
		return QFileSystemModel_setFilter(pObject,P1)

	Func setIconProvider P1
		return QFileSystemModel_setIconProvider(pObject,GetObjectPointerFromRingObject(P1))

	Func setNameFilterDisables P1
		return QFileSystemModel_setNameFilterDisables(pObject,P1)

	Func setNameFilters P1
		return QFileSystemModel_setNameFilters(pObject,GetObjectPointerFromRingObject(P1))

	Func setReadOnly P1
		return QFileSystemModel_setReadOnly(pObject,P1)

	Func setResolveSymlinks P1
		return QFileSystemModel_setResolveSymlinks(pObject,P1)

	Func setRootPath P1
		pTempObj = new QModelIndex
		pTempObj.pObject = QFileSystemModel_setRootPath(pObject,P1)
		return pTempObj

	Func size P1
		return QFileSystemModel_size(pObject,GetObjectPointerFromRingObject(P1))

	Func type P1
		return QFileSystemModel_type(pObject,GetObjectPointerFromRingObject(P1))

	Func canFetchMore P1
		return QFileSystemModel_canFetchMore(pObject,GetObjectPointerFromRingObject(P1))

	Func columnCount 
		return QFileSystemModel_columnCount(pObject)

	Func data P1,P2
		pTempObj = new QVariant
		pTempObj.pObject = QFileSystemModel_data(pObject,GetObjectPointerFromRingObject(P1),P2)
		return pTempObj

	Func dropMimeData P1,P2,P3,P4,P5
		return QFileSystemModel_dropMimeData(pObject,GetObjectPointerFromRingObject(P1),P2,P3,P4,GetObjectPointerFromRingObject(P5))

	Func fetchMore P1
		return QFileSystemModel_fetchMore(pObject,GetObjectPointerFromRingObject(P1))

	Func flags P1
		return QFileSystemModel_flags(pObject,GetObjectPointerFromRingObject(P1))

	Func hasChildren P1
		return QFileSystemModel_hasChildren(pObject,GetObjectPointerFromRingObject(P1))

	Func headerData P1,P2,P3
		pTempObj = new QVariant
		pTempObj.pObject = QFileSystemModel_headerData(pObject,P1,P2,P3)
		return pTempObj

	Func mimeData P1
		pTempObj = new QMimeData
		pTempObj.pObject = QFileSystemModel_mimeData(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func mimeTypes 
		pTempObj = new QStringList
		pTempObj.pObject = QFileSystemModel_mimeTypes(pObject)
		return pTempObj

	Func parent P1
		pTempObj = new QModelIndex
		pTempObj.pObject = QFileSystemModel_parent(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func rowCount P1
		return QFileSystemModel_rowCount(pObject,GetObjectPointerFromRingObject(P1))

	Func setData P1,P2,P3
		return QFileSystemModel_setData(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2),P3)

	Func sort P1,P2
		return QFileSystemModel_sort(pObject,P1,P2)

	Func supportedDropActions 
		return QFileSystemModel_supportedDropActions(pObject)

Class QTreeWidget from QTreeView

	pObject

	Func init P1
		pObject = QTreeWidget_new(GetObjectPointerFromRingObject(P1))
		return self

	Func delete
		pObject = QTreeWidget_delete(pObject)

	Func ObjectPointer
		return pObject

	Func addTopLevelItem P1
		return QTreeWidget_addTopLevelItem(pObject,GetObjectPointerFromRingObject(P1))

	Func closePersistentEditor P1,P2
		return QTreeWidget_closePersistentEditor(pObject,GetObjectPointerFromRingObject(P1),P2)

	Func columnCount 
		return QTreeWidget_columnCount(pObject)

	Func currentColumn 
		return QTreeWidget_currentColumn(pObject)

	Func currentItem 
		pTempObj = new QTreeWidgetItem
		pTempObj.pObject = QTreeWidget_currentItem(pObject)
		return pTempObj

	Func editItem P1,P2
		return QTreeWidget_editItem(pObject,GetObjectPointerFromRingObject(P1),P2)

	Func headerItem 
		pTempObj = new QTreeWidgetItem
		pTempObj.pObject = QTreeWidget_headerItem(pObject)
		return pTempObj

	Func indexOfTopLevelItem P1
		return QTreeWidget_indexOfTopLevelItem(pObject,GetObjectPointerFromRingObject(P1))

	Func insertTopLevelItem P1,P2
		return QTreeWidget_insertTopLevelItem(pObject,P1,GetObjectPointerFromRingObject(P2))

	Func invisibleRootItem 
		pTempObj = new QTreeWidgetItem
		pTempObj.pObject = QTreeWidget_invisibleRootItem(pObject)
		return pTempObj

	Func itemAbove P1
		pTempObj = new QTreeWidgetItem
		pTempObj.pObject = QTreeWidget_itemAbove(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func itemAt P1,P2
		pTempObj = new QTreeWidgetItem
		pTempObj.pObject = QTreeWidget_itemAt(pObject,P1,P2)
		return pTempObj

	Func itemBelow P1
		pTempObj = new QTreeWidgetItem
		pTempObj.pObject = QTreeWidget_itemBelow(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func itemWidget P1,P2
		pTempObj = new QWidget
		pTempObj.pObject = QTreeWidget_itemWidget(pObject,GetObjectPointerFromRingObject(P1),P2)
		return pTempObj

	Func openPersistentEditor P1,P2
		return QTreeWidget_openPersistentEditor(pObject,GetObjectPointerFromRingObject(P1),P2)

	Func removeItemWidget P1,P2
		return QTreeWidget_removeItemWidget(pObject,GetObjectPointerFromRingObject(P1),P2)

	Func setColumnCount P1
		return QTreeWidget_setColumnCount(pObject,P1)

	Func setCurrentItem P1,P2
		return QTreeWidget_setCurrentItem(pObject,GetObjectPointerFromRingObject(P1),P2)

	Func setHeaderItem P1
		return QTreeWidget_setHeaderItem(pObject,GetObjectPointerFromRingObject(P1))

	Func setHeaderLabel P1
		return QTreeWidget_setHeaderLabel(pObject,P1)

	Func setHeaderLabels P1
		return QTreeWidget_setHeaderLabels(pObject,GetObjectPointerFromRingObject(P1))

	Func setItemWidget P1,P2,P3
		return QTreeWidget_setItemWidget(pObject,GetObjectPointerFromRingObject(P1),P2,GetObjectPointerFromRingObject(P3))

	Func sortColumn 
		return QTreeWidget_sortColumn(pObject)

	Func sortItems P1,P2
		return QTreeWidget_sortItems(pObject,P1,P2)

	Func takeTopLevelItem P1
		pTempObj = new QTreeWidgetItem
		pTempObj.pObject = QTreeWidget_takeTopLevelItem(pObject,P1)
		return pTempObj

	Func topLevelItem P1
		pTempObj = new QTreeWidgetItem
		pTempObj.pObject = QTreeWidget_topLevelItem(pObject,P1)
		return pTempObj

	Func topLevelItemCount 
		return QTreeWidget_topLevelItemCount(pObject)

	Func visualItemRect P1
		pTempObj = new QRect
		pTempObj.pObject = QTreeWidget_visualItemRect(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func setSelectionModel P1
		return QTreeWidget_setSelectionModel(pObject,GetObjectPointerFromRingObject(P1))

	Func clear 
		return QTreeWidget_clear(pObject)

	Func collapseItem P1
		return QTreeWidget_collapseItem(pObject,GetObjectPointerFromRingObject(P1))

	Func expandItem P1
		return QTreeWidget_expandItem(pObject,GetObjectPointerFromRingObject(P1))

	Func scrollToItem P1,P2
		return QTreeWidget_scrollToItem(pObject,GetObjectPointerFromRingObject(P1),P2)

	Func setcollapsedEvent P1
		return QTreeWidget_setcollapsedEvent(pObject,P1)

	Func setexpandedEvent P1
		return QTreeWidget_setexpandedEvent(pObject,P1)

	Func setactivatedEvent P1
		return QTreeWidget_setactivatedEvent(pObject,P1)

	Func setclickedEvent P1
		return QTreeWidget_setclickedEvent(pObject,P1)

	Func setdoubleClickedEvent P1
		return QTreeWidget_setdoubleClickedEvent(pObject,P1)

	Func setenteredEvent P1
		return QTreeWidget_setenteredEvent(pObject,P1)

	Func setpressedEvent P1
		return QTreeWidget_setpressedEvent(pObject,P1)

	Func setviewportEnteredEvent P1
		return QTreeWidget_setviewportEnteredEvent(pObject,P1)

	Func setcurrentItemChangedEvent P1
		return QTreeWidget_setcurrentItemChangedEvent(pObject,P1)

	Func setitemActivatedEvent P1
		return QTreeWidget_setitemActivatedEvent(pObject,P1)

	Func setitemChangedEvent P1
		return QTreeWidget_setitemChangedEvent(pObject,P1)

	Func setitemClickedEvent P1
		return QTreeWidget_setitemClickedEvent(pObject,P1)

	Func setitemCollapsedEvent P1
		return QTreeWidget_setitemCollapsedEvent(pObject,P1)

	Func setitemDoubleClickedEvent P1
		return QTreeWidget_setitemDoubleClickedEvent(pObject,P1)

	Func setitemEnteredEvent P1
		return QTreeWidget_setitemEnteredEvent(pObject,P1)

	Func setitemExpandedEvent P1
		return QTreeWidget_setitemExpandedEvent(pObject,P1)

	Func setitemPressedEvent P1
		return QTreeWidget_setitemPressedEvent(pObject,P1)

	Func setitemSelectionChangedEvent P1
		return QTreeWidget_setitemSelectionChangedEvent(pObject,P1)

	Func getcollapsedEvent 
		return QTreeWidget_getcollapsedEvent(pObject)

	Func getexpandedEvent 
		return QTreeWidget_getexpandedEvent(pObject)

	Func getactivatedEvent 
		return QTreeWidget_getactivatedEvent(pObject)

	Func getclickedEvent 
		return QTreeWidget_getclickedEvent(pObject)

	Func getdoubleClickedEvent 
		return QTreeWidget_getdoubleClickedEvent(pObject)

	Func getenteredEvent 
		return QTreeWidget_getenteredEvent(pObject)

	Func getpressedEvent 
		return QTreeWidget_getpressedEvent(pObject)

	Func getviewportEnteredEvent 
		return QTreeWidget_getviewportEnteredEvent(pObject)

	Func getcurrentItemChangedEvent 
		return QTreeWidget_getcurrentItemChangedEvent(pObject)

	Func getitemActivatedEvent 
		return QTreeWidget_getitemActivatedEvent(pObject)

	Func getitemChangedEvent 
		return QTreeWidget_getitemChangedEvent(pObject)

	Func getitemClickedEvent 
		return QTreeWidget_getitemClickedEvent(pObject)

	Func getitemCollapsedEvent 
		return QTreeWidget_getitemCollapsedEvent(pObject)

	Func getitemDoubleClickedEvent 
		return QTreeWidget_getitemDoubleClickedEvent(pObject)

	Func getitemEnteredEvent 
		return QTreeWidget_getitemEnteredEvent(pObject)

	Func getitemExpandedEvent 
		return QTreeWidget_getitemExpandedEvent(pObject)

	Func getitemPressedEvent 
		return QTreeWidget_getitemPressedEvent(pObject)

	Func getitemSelectionChangedEvent 
		return QTreeWidget_getitemSelectionChangedEvent(pObject)

Class QTreeWidgetItem

	pObject

	Func init 
		pObject = QTreeWidgetItem_new()
		return self

	Func delete
		pObject = QTreeWidgetItem_delete(pObject)

	Func ObjectPointer
		return pObject

	Func addChild P1
		return QTreeWidgetItem_addChild(pObject,GetObjectPointerFromRingObject(P1))

	Func background P1
		pTempObj = new QBrush
		pTempObj.pObject = QTreeWidgetItem_background(pObject,P1)
		return pTempObj

	Func checkState P1
		return QTreeWidgetItem_checkState(pObject,P1)

	Func child P1
		pTempObj = new QTreeWidgetItem
		pTempObj.pObject = QTreeWidgetItem_child(pObject,P1)
		return pTempObj

	Func childCount 
		return QTreeWidgetItem_childCount(pObject)

	Func childIndicatorPolicy 
		return QTreeWidgetItem_childIndicatorPolicy(pObject)

	Func clone 
		pTempObj = new QTreeWidgetItem
		pTempObj.pObject = QTreeWidgetItem_clone(pObject)
		return pTempObj

	Func columnCount 
		return QTreeWidgetItem_columnCount(pObject)

	Func data P1,P2
		pTempObj = new QVariant
		pTempObj.pObject = QTreeWidgetItem_data(pObject,P1,P2)
		return pTempObj

	Func flags 
		return QTreeWidgetItem_flags(pObject)

	Func font P1
		pTempObj = new QFont
		pTempObj.pObject = QTreeWidgetItem_font(pObject,P1)
		return pTempObj

	Func foreground P1
		pTempObj = new QBrush
		pTempObj.pObject = QTreeWidgetItem_foreground(pObject,P1)
		return pTempObj

	Func icon P1
		pTempObj = new QIcon
		pTempObj.pObject = QTreeWidgetItem_icon(pObject,P1)
		return pTempObj

	Func indexOfChild P1
		return QTreeWidgetItem_indexOfChild(pObject,GetObjectPointerFromRingObject(P1))

	Func insertChild P1,P2
		return QTreeWidgetItem_insertChild(pObject,P1,GetObjectPointerFromRingObject(P2))

	Func isDisabled 
		return QTreeWidgetItem_isDisabled(pObject)

	Func isExpanded 
		return QTreeWidgetItem_isExpanded(pObject)

	Func isFirstColumnSpanned 
		return QTreeWidgetItem_isFirstColumnSpanned(pObject)

	Func isHidden 
		return QTreeWidgetItem_isHidden(pObject)

	Func isSelected 
		return QTreeWidgetItem_isSelected(pObject)

	Func parent 
		pTempObj = new QTreeWidgetItem
		pTempObj.pObject = QTreeWidgetItem_parent(pObject)
		return pTempObj

	Func read P1
		return QTreeWidgetItem_read(pObject,GetObjectPointerFromRingObject(P1))

	Func removeChild P1
		return QTreeWidgetItem_removeChild(pObject,GetObjectPointerFromRingObject(P1))

	Func setBackground P1,P2
		return QTreeWidgetItem_setBackground(pObject,P1,GetObjectPointerFromRingObject(P2))

	Func setCheckState P1,P2
		return QTreeWidgetItem_setCheckState(pObject,P1,P2)

	Func setChildIndicatorPolicy P1
		return QTreeWidgetItem_setChildIndicatorPolicy(pObject,P1)

	Func setData P1,P2,P3
		return QTreeWidgetItem_setData(pObject,P1,P2,GetObjectPointerFromRingObject(P3))

	Func setDisabled P1
		return QTreeWidgetItem_setDisabled(pObject,P1)

	Func setExpanded P1
		return QTreeWidgetItem_setExpanded(pObject,P1)

	Func setFirstColumnSpanned P1
		return QTreeWidgetItem_setFirstColumnSpanned(pObject,P1)

	Func setFlags P1
		return QTreeWidgetItem_setFlags(pObject,P1)

	Func setFont P1,P2
		return QTreeWidgetItem_setFont(pObject,P1,GetObjectPointerFromRingObject(P2))

	Func setForeground P1,P2
		return QTreeWidgetItem_setForeground(pObject,P1,GetObjectPointerFromRingObject(P2))

	Func setHidden P1
		return QTreeWidgetItem_setHidden(pObject,P1)

	Func setIcon P1,P2
		return QTreeWidgetItem_setIcon(pObject,P1,GetObjectPointerFromRingObject(P2))

	Func setSelected P1
		return QTreeWidgetItem_setSelected(pObject,P1)

	Func setSizeHint P1,P2
		return QTreeWidgetItem_setSizeHint(pObject,P1,GetObjectPointerFromRingObject(P2))

	Func setStatusTip P1,P2
		return QTreeWidgetItem_setStatusTip(pObject,P1,P2)

	Func setText P1,P2
		return QTreeWidgetItem_setText(pObject,P1,P2)

	Func setTextAlignment P1,P2
		return QTreeWidgetItem_setTextAlignment(pObject,P1,P2)

	Func setToolTip P1,P2
		return QTreeWidgetItem_setToolTip(pObject,P1,P2)

	Func setWhatsThis P1,P2
		return QTreeWidgetItem_setWhatsThis(pObject,P1,P2)

	Func sizeHint P1
		pTempObj = new QSize
		pTempObj.pObject = QTreeWidgetItem_sizeHint(pObject,P1)
		return pTempObj

	Func sortChildren P1,P2
		return QTreeWidgetItem_sortChildren(pObject,P1,P2)

	Func statusTip P1
		return QTreeWidgetItem_statusTip(pObject,P1)

	Func takeChild P1
		pTempObj = new QTreeWidgetItem
		pTempObj.pObject = QTreeWidgetItem_takeChild(pObject,P1)
		return pTempObj

	Func text P1
		return QTreeWidgetItem_text(pObject,P1)

	Func textAlignment P1
		return QTreeWidgetItem_textAlignment(pObject,P1)

	Func toolTip P1
		return QTreeWidgetItem_toolTip(pObject,P1)

	Func treeWidget 
		pTempObj = new QTreeWidget
		pTempObj.pObject = QTreeWidgetItem_treeWidget(pObject)
		return pTempObj

	Func type 
		return QTreeWidgetItem_type(pObject)

	Func whatsThis P1
		return QTreeWidgetItem_whatsThis(pObject,P1)

	Func write P1
		return QTreeWidgetItem_write(pObject,GetObjectPointerFromRingObject(P1))

Class QComboBox from QWidget

	pObject

	Func init P1
		pObject = QComboBox_new(GetObjectPointerFromRingObject(P1))
		return self

	Func delete
		pObject = QComboBox_delete(pObject)

	Func ObjectPointer
		return pObject

	Func addItem P1,P2
		return QComboBox_addItem(pObject,P1,P2)

	Func addItems P1
		return QComboBox_addItems(pObject,GetObjectPointerFromRingObject(P1))

	Func completer 
		pTempObj = new QCompleter
		pTempObj.pObject = QComboBox_completer(pObject)
		return pTempObj

	Func count 
		return QComboBox_count(pObject)

	Func currentIndex 
		return QComboBox_currentIndex(pObject)

	Func currentText 
		return QComboBox_currentText(pObject)

	Func duplicatesEnabled 
		return QComboBox_duplicatesEnabled(pObject)

	Func findData P1,P2,P3
		return QComboBox_findData(pObject,GetObjectPointerFromRingObject(P1),P2,P3)

	Func findText P1,P2
		return QComboBox_findText(pObject,P1,P2)

	Func hasFrame 
		return QComboBox_hasFrame(pObject)

	Func hidePopup 
		return QComboBox_hidePopup(pObject)

	Func iconSize 
		pTempObj = new QSize
		pTempObj.pObject = QComboBox_iconSize(pObject)
		return pTempObj

	Func insertItem P1,P2,P3
		return QComboBox_insertItem(pObject,P1,P2,GetObjectPointerFromRingObject(P3))

	Func insertSeparator P1
		return QComboBox_insertSeparator(pObject,P1)

	Func isEditable 
		return QComboBox_isEditable(pObject)

	Func itemData P1,P2
		pTempObj = new QVariant
		pTempObj.pObject = QComboBox_itemData(pObject,P1,P2)
		return pTempObj

	Func itemDelegate 
		return QComboBox_itemDelegate(pObject)

	Func itemIcon P1
		pTempObj = new QIcon
		pTempObj.pObject = QComboBox_itemIcon(pObject,P1)
		return pTempObj

	Func itemText P1
		return QComboBox_itemText(pObject,P1)

	Func lineEdit 
		pTempObj = new QLineEdit
		pTempObj.pObject = QComboBox_lineEdit(pObject)
		return pTempObj

	Func maxCount 
		return QComboBox_maxCount(pObject)

	Func maxVisibleItems 
		return QComboBox_maxVisibleItems(pObject)

	Func minimumContentsLength 
		return QComboBox_minimumContentsLength(pObject)

	Func model 
		return QComboBox_model(pObject)

	Func modelColumn 
		return QComboBox_modelColumn(pObject)

	Func removeItem P1
		return QComboBox_removeItem(pObject,P1)

	Func rootModelIndex 
		pTempObj = new QModelIndex
		pTempObj.pObject = QComboBox_rootModelIndex(pObject)
		return pTempObj

	Func setCompleter P1
		return QComboBox_setCompleter(pObject,GetObjectPointerFromRingObject(P1))

	Func setDuplicatesEnabled P1
		return QComboBox_setDuplicatesEnabled(pObject,P1)

	Func setEditable P1
		return QComboBox_setEditable(pObject,P1)

	Func setFrame P1
		return QComboBox_setFrame(pObject,P1)

	Func setIconSize P1
		return QComboBox_setIconSize(pObject,GetObjectPointerFromRingObject(P1))

	Func setItemData P1,P2,P3
		return QComboBox_setItemData(pObject,P1,GetObjectPointerFromRingObject(P2),P3)

	Func setItemDelegate P1
		return QComboBox_setItemDelegate(pObject,GetObjectPointerFromRingObject(P1))

	Func setItemIcon P1,P2
		return QComboBox_setItemIcon(pObject,P1,GetObjectPointerFromRingObject(P2))

	Func setItemText P1,P2
		return QComboBox_setItemText(pObject,P1,P2)

	Func setLineEdit P1
		return QComboBox_setLineEdit(pObject,GetObjectPointerFromRingObject(P1))

	Func setMaxCount P1
		return QComboBox_setMaxCount(pObject,P1)

	Func setMaxVisibleItems P1
		return QComboBox_setMaxVisibleItems(pObject,P1)

	Func setMinimumContentsLength P1
		return QComboBox_setMinimumContentsLength(pObject,P1)

	Func setModel P1
		return QComboBox_setModel(pObject,GetObjectPointerFromRingObject(P1))

	Func setModelColumn P1
		return QComboBox_setModelColumn(pObject,P1)

	Func setRootModelIndex P1
		return QComboBox_setRootModelIndex(pObject,GetObjectPointerFromRingObject(P1))

	Func setValidator P1
		return QComboBox_setValidator(pObject,GetObjectPointerFromRingObject(P1))

	Func setView P1
		return QComboBox_setView(pObject,GetObjectPointerFromRingObject(P1))

	Func showPopup 
		return QComboBox_showPopup(pObject)

	Func validator 
		return QComboBox_validator(pObject)

	Func view 
		pTempObj = new QAbstractItemView
		pTempObj.pObject = QComboBox_view(pObject)
		return pTempObj

	Func clear 
		return QComboBox_clear(pObject)

	Func clearEditText 
		return QComboBox_clearEditText(pObject)

	Func setCurrentIndex P1
		return QComboBox_setCurrentIndex(pObject,P1)

	Func setCurrentText P1
		return QComboBox_setCurrentText(pObject,P1)

	Func setEditText P1
		return QComboBox_setEditText(pObject,P1)

	Func setactivatedEvent P1
		return QComboBox_setactivatedEvent(pObject,P1)

	Func setcurrentIndexChangedEvent P1
		return QComboBox_setcurrentIndexChangedEvent(pObject,P1)

	Func seteditTextChangedEvent P1
		return QComboBox_seteditTextChangedEvent(pObject,P1)

	Func sethighlightedEvent P1
		return QComboBox_sethighlightedEvent(pObject,P1)

	Func getactivatedEvent 
		return QComboBox_getactivatedEvent(pObject)

	Func getcurrentIndexChangedEvent 
		return QComboBox_getcurrentIndexChangedEvent(pObject)

	Func geteditTextChangedEvent 
		return QComboBox_geteditTextChangedEvent(pObject)

	Func gethighlightedEvent 
		return QComboBox_gethighlightedEvent(pObject)

Class QMenuBar from QWidget

	pObject

	Func init P1
		pObject = QMenuBar_new(GetObjectPointerFromRingObject(P1))
		return self

	Func delete
		pObject = QMenuBar_delete(pObject)

	Func ObjectPointer
		return pObject

	Func actionAt P1
		pTempObj = new QAction
		pTempObj.pObject = QMenuBar_actionAt(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func actionGeometry P1
		pTempObj = new QRect
		pTempObj.pObject = QMenuBar_actionGeometry(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func activeAction 
		pTempObj = new QAction
		pTempObj.pObject = QMenuBar_activeAction(pObject)
		return pTempObj

	Func addAction P1
		pTempObj = new QAction
		pTempObj.pObject = QMenuBar_addAction(pObject,P1)
		return pTempObj

	Func addMenu P1
		pTempObj = new QMenu
		pTempObj.pObject = QMenuBar_addMenu(pObject,P1)
		return pTempObj

	Func addSeparator 
		pTempObj = new QAction
		pTempObj.pObject = QMenuBar_addSeparator(pObject)
		return pTempObj

	Func clear 
		return QMenuBar_clear(pObject)

	Func cornerWidget P1
		pTempObj = new QWidget
		pTempObj.pObject = QMenuBar_cornerWidget(pObject,P1)
		return pTempObj

	Func insertMenu P1,P2
		pTempObj = new QAction
		pTempObj.pObject = QMenuBar_insertMenu(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2))
		return pTempObj

	Func insertSeparator P1
		pTempObj = new QAction
		pTempObj.pObject = QMenuBar_insertSeparator(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func isDefaultUp 
		return QMenuBar_isDefaultUp(pObject)

	Func isNativeMenuBar 
		return QMenuBar_isNativeMenuBar(pObject)

	Func setActiveAction P1
		return QMenuBar_setActiveAction(pObject,GetObjectPointerFromRingObject(P1))

	Func setCornerWidget P1,P2
		return QMenuBar_setCornerWidget(pObject,GetObjectPointerFromRingObject(P1),P2)

	Func setDefaultUp P1
		return QMenuBar_setDefaultUp(pObject,P1)

	Func setNativeMenuBar P1
		return QMenuBar_setNativeMenuBar(pObject,P1)

Class QMenu from QWidget

	pObject

	Func init P1
		pObject = QMenu_new(GetObjectPointerFromRingObject(P1))
		return self

	Func delete
		pObject = QMenu_delete(pObject)

	Func ObjectPointer
		return pObject

	Func actionAt P1
		pTempObj = new QAction
		pTempObj.pObject = QMenu_actionAt(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func actionGeometry P1
		pTempObj = new QRect
		pTempObj.pObject = QMenu_actionGeometry(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func activeAction 
		pTempObj = new QAction
		pTempObj.pObject = QMenu_activeAction(pObject)
		return pTempObj

	Func addAction P1
		return QMenu_addAction(pObject,GetObjectPointerFromRingObject(P1))

	Func addMenu P1
		pTempObj = new QMenu
		pTempObj.pObject = QMenu_addMenu(pObject,P1)
		return pTempObj

	Func addSeparator 
		pTempObj = new QAction
		pTempObj.pObject = QMenu_addSeparator(pObject)
		return pTempObj

	Func clear 
		return QMenu_clear(pObject)

	Func defaultAction 
		pTempObj = new QAction
		pTempObj.pObject = QMenu_defaultAction(pObject)
		return pTempObj

	Func exec P1
		pTempObj = new QAction
		pTempObj.pObject = QMenu_exec(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func exec_2 
		pTempObj = new QAction
		pTempObj.pObject = QMenu_exec_2(pObject)
		return pTempObj

	Func exec_3 P1,P2
		pTempObj = new QAction
		pTempObj.pObject = QMenu_exec_3(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2))
		return pTempObj

	Func hideTearOffMenu 
		return QMenu_hideTearOffMenu(pObject)

	Func icon 
		pTempObj = new QIcon
		pTempObj.pObject = QMenu_icon(pObject)
		return pTempObj

	Func insertMenu P1,P2
		pTempObj = new QAction
		pTempObj.pObject = QMenu_insertMenu(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2))
		return pTempObj

	Func insertSeparator P1
		pTempObj = new QAction
		pTempObj.pObject = QMenu_insertSeparator(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func isEmpty 
		return QMenu_isEmpty(pObject)

	Func isTearOffEnabled 
		return QMenu_isTearOffEnabled(pObject)

	Func isTearOffMenuVisible 
		return QMenu_isTearOffMenuVisible(pObject)

	Func menuAction 
		pTempObj = new QAction
		pTempObj.pObject = QMenu_menuAction(pObject)
		return pTempObj

	Func popup P1,P2
		return QMenu_popup(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2))

	Func separatorsCollapsible 
		return QMenu_separatorsCollapsible(pObject)

	Func setActiveAction P1
		return QMenu_setActiveAction(pObject,GetObjectPointerFromRingObject(P1))

	Func setDefaultAction P1
		return QMenu_setDefaultAction(pObject,GetObjectPointerFromRingObject(P1))

	Func setIcon P1
		return QMenu_setIcon(pObject,GetObjectPointerFromRingObject(P1))

	Func setSeparatorsCollapsible P1
		return QMenu_setSeparatorsCollapsible(pObject,P1)

	Func setTearOffEnabled P1
		return QMenu_setTearOffEnabled(pObject,P1)

	Func setTitle P1
		return QMenu_setTitle(pObject,P1)

	Func title 
		return QMenu_title(pObject)

Class QToolBar from QWidget

	pObject

	Func init P1
		pObject = QToolBar_new(GetObjectPointerFromRingObject(P1))
		return self

	Func delete
		pObject = QToolBar_delete(pObject)

	Func ObjectPointer
		return pObject

	Func actionAt P1,P2
		pTempObj = new QAction
		pTempObj.pObject = QToolBar_actionAt(pObject,P1,P2)
		return pTempObj

	Func addAction P1
		pTempObj = new QAction
		pTempObj.pObject = QToolBar_addAction(pObject,P1)
		return pTempObj

	Func addSeparator 
		pTempObj = new QAction
		pTempObj.pObject = QToolBar_addSeparator(pObject)
		return pTempObj

	Func addWidget P1
		pTempObj = new QAction
		pTempObj.pObject = QToolBar_addWidget(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func allowedAreas 
		return QToolBar_allowedAreas(pObject)

	Func clear 
		return QToolBar_clear(pObject)

	Func iconSize 
		pTempObj = new QSize
		pTempObj.pObject = QToolBar_iconSize(pObject)
		return pTempObj

	Func insertSeparator P1
		pTempObj = new QAction
		pTempObj.pObject = QToolBar_insertSeparator(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func insertWidget P1,P2
		pTempObj = new QAction
		pTempObj.pObject = QToolBar_insertWidget(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2))
		return pTempObj

	Func isAreaAllowed P1
		return QToolBar_isAreaAllowed(pObject,P1)

	Func isFloatable 
		return QToolBar_isFloatable(pObject)

	Func isFloating 
		return QToolBar_isFloating(pObject)

	Func isMovable 
		return QToolBar_isMovable(pObject)

	Func orientation 
		return QToolBar_orientation(pObject)

	Func setAllowedAreas P1
		return QToolBar_setAllowedAreas(pObject,P1)

	Func setFloatable P1
		return QToolBar_setFloatable(pObject,P1)

	Func setMovable P1
		return QToolBar_setMovable(pObject,P1)

	Func setOrientation P1
		return QToolBar_setOrientation(pObject,P1)

	Func toggleViewAction 
		pTempObj = new QAction
		pTempObj.pObject = QToolBar_toggleViewAction(pObject)
		return pTempObj

	Func toolButtonStyle 
		return QToolBar_toolButtonStyle(pObject)

	Func widgetForAction P1
		pTempObj = new QWidget
		pTempObj.pObject = QToolBar_widgetForAction(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func setIconSize P1
		return QToolBar_setIconSize(pObject,GetObjectPointerFromRingObject(P1))

	Func setToolButtonStyle P1
		return QToolBar_setToolButtonStyle(pObject,P1)

Class QMainWindow from QWidget

	pObject

	Func init 
		pObject = QMainWindow_new()
		return self

	Func delete
		pObject = QMainWindow_delete(pObject)

	Func ObjectPointer
		return pObject

	Func addDockWidget P1,P2,P3
		return QMainWindow_addDockWidget(pObject,P1,GetObjectPointerFromRingObject(P2),P3)

	Func addToolBar P1
		pTempObj = new QToolBar
		pTempObj.pObject = QMainWindow_addToolBar(pObject,P1)
		return pTempObj

	Func addToolBar_2 P1,P2
		return QMainWindow_addToolBar_2(pObject,P1,GetObjectPointerFromRingObject(P2))

	Func addToolBarBreak P1
		return QMainWindow_addToolBarBreak(pObject,P1)

	Func centralWidget 
		pTempObj = new QWidget
		pTempObj.pObject = QMainWindow_centralWidget(pObject)
		return pTempObj

	Func corner P1
		return QMainWindow_corner(pObject,P1)

	Func createPopupMenu 
		pTempObj = new QMenu
		pTempObj.pObject = QMainWindow_createPopupMenu(pObject)
		return pTempObj

	Func dockOptions 
		return QMainWindow_dockOptions(pObject)

	Func dockWidgetArea P1
		return QMainWindow_dockWidgetArea(pObject,GetObjectPointerFromRingObject(P1))

	Func documentMode 
		return QMainWindow_documentMode(pObject)

	Func iconSize 
		pTempObj = new QSize
		pTempObj.pObject = QMainWindow_iconSize(pObject)
		return pTempObj

	Func insertToolBar P1,P2
		return QMainWindow_insertToolBar(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2))

	Func insertToolBarBreak P1
		return QMainWindow_insertToolBarBreak(pObject,GetObjectPointerFromRingObject(P1))

	Func isAnimated 
		return QMainWindow_isAnimated(pObject)

	Func isDockNestingEnabled 
		return QMainWindow_isDockNestingEnabled(pObject)

	Func menuBar 
		pTempObj = new QMenuBar
		pTempObj.pObject = QMainWindow_menuBar(pObject)
		return pTempObj

	Func menuWidget 
		pTempObj = new QWidget
		pTempObj.pObject = QMainWindow_menuWidget(pObject)
		return pTempObj

	Func removeDockWidget P1
		return QMainWindow_removeDockWidget(pObject,GetObjectPointerFromRingObject(P1))

	Func removeToolBar P1
		return QMainWindow_removeToolBar(pObject,GetObjectPointerFromRingObject(P1))

	Func removeToolBarBreak P1
		return QMainWindow_removeToolBarBreak(pObject,GetObjectPointerFromRingObject(P1))

	Func restoreDockWidget P1
		return QMainWindow_restoreDockWidget(pObject,GetObjectPointerFromRingObject(P1))

	Func restoreState P1,P2
		return QMainWindow_restoreState(pObject,GetObjectPointerFromRingObject(P1),P2)

	Func saveState P1
		pTempObj = new QByteArray
		pTempObj.pObject = QMainWindow_saveState(pObject,P1)
		return pTempObj

	Func setCentralWidget P1
		return QMainWindow_setCentralWidget(pObject,GetObjectPointerFromRingObject(P1))

	Func setCorner P1,P2
		return QMainWindow_setCorner(pObject,P1,P2)

	Func setDockOptions P1
		return QMainWindow_setDockOptions(pObject,P1)

	Func setDocumentMode P1
		return QMainWindow_setDocumentMode(pObject,P1)

	Func setIconSize P1
		return QMainWindow_setIconSize(pObject,GetObjectPointerFromRingObject(P1))

	Func setMenuBar P1
		return QMainWindow_setMenuBar(pObject,GetObjectPointerFromRingObject(P1))

	Func setMenuWidget P1
		return QMainWindow_setMenuWidget(pObject,GetObjectPointerFromRingObject(P1))

	Func setStatusBar P1
		return QMainWindow_setStatusBar(pObject,GetObjectPointerFromRingObject(P1))

	Func setTabPosition P1,P2
		return QMainWindow_setTabPosition(pObject,P1,P2)

	Func setTabShape P1
		return QMainWindow_setTabShape(pObject,P1)

	Func setToolButtonStyle P1
		return QMainWindow_setToolButtonStyle(pObject,P1)

	Func setUnifiedTitleAndToolBarOnMac P1
		return QMainWindow_setUnifiedTitleAndToolBarOnMac(pObject,P1)

	Func splitDockWidget P1,P2,P3
		return QMainWindow_splitDockWidget(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2),P3)

	Func statusBar 
		pTempObj = new QStatusBar
		pTempObj.pObject = QMainWindow_statusBar(pObject)
		return pTempObj

	Func tabPosition P1
		return QMainWindow_tabPosition(pObject,P1)

	Func tabShape 
		return QMainWindow_tabShape(pObject)

	Func tabifyDockWidget P1,P2
		return QMainWindow_tabifyDockWidget(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2))

	Func toolBarArea P1
		return QMainWindow_toolBarArea(pObject,GetObjectPointerFromRingObject(P1))

	Func toolBarBreak P1
		return QMainWindow_toolBarBreak(pObject,GetObjectPointerFromRingObject(P1))

	Func toolButtonStyle 
		return QMainWindow_toolButtonStyle(pObject)

	Func unifiedTitleAndToolBarOnMac 
		return QMainWindow_unifiedTitleAndToolBarOnMac(pObject)

Class QStatusBar from QWidget

	pObject

	Func init P1
		pObject = QStatusBar_new(GetObjectPointerFromRingObject(P1))
		return self

	Func delete
		pObject = QStatusBar_delete(pObject)

	Func ObjectPointer
		return pObject

	Func addPermanentWidget P1,P2
		return QStatusBar_addPermanentWidget(pObject,GetObjectPointerFromRingObject(P1),P2)

	Func addWidget P1,P2
		return QStatusBar_addWidget(pObject,GetObjectPointerFromRingObject(P1),P2)

	Func currentMessage 
		return QStatusBar_currentMessage(pObject)

	Func insertPermanentWidget P1,P2,P3
		return QStatusBar_insertPermanentWidget(pObject,P1,GetObjectPointerFromRingObject(P2),P3)

	Func insertWidget P1,P2,P3
		return QStatusBar_insertWidget(pObject,P1,GetObjectPointerFromRingObject(P2),P3)

	Func isSizeGripEnabled 
		return QStatusBar_isSizeGripEnabled(pObject)

	Func removeWidget P1
		return QStatusBar_removeWidget(pObject,GetObjectPointerFromRingObject(P1))

	Func setSizeGripEnabled P1
		return QStatusBar_setSizeGripEnabled(pObject,P1)

	Func clearMessage 
		return QStatusBar_clearMessage(pObject)

	Func showMessage P1,P2
		return QStatusBar_showMessage(pObject,P1,P2)

Class QDockWidget from QWidget

	pObject

	Func init P1,P2
		pObject = QDockWidget_new(GetObjectPointerFromRingObject(P1),P2)
		return self

	Func delete
		pObject = QDockWidget_delete(pObject)

	Func ObjectPointer
		return pObject

	Func allowedAreas 
		return QDockWidget_allowedAreas(pObject)

	Func features 
		return QDockWidget_features(pObject)

	Func isAreaAllowed P1
		return QDockWidget_isAreaAllowed(pObject,P1)

	Func isFloating 
		return QDockWidget_isFloating(pObject)

	Func setAllowedAreas P1
		return QDockWidget_setAllowedAreas(pObject,P1)

	Func setFeatures P1
		return QDockWidget_setFeatures(pObject,P1)

	Func setFloating P1
		return QDockWidget_setFloating(pObject,P1)

	Func setTitleBarWidget P1
		return QDockWidget_setTitleBarWidget(pObject,GetObjectPointerFromRingObject(P1))

	Func setWidget P1
		return QDockWidget_setWidget(pObject,GetObjectPointerFromRingObject(P1))

	Func titleBarWidget 
		pTempObj = new QWidget
		pTempObj.pObject = QDockWidget_titleBarWidget(pObject)
		return pTempObj

	Func toggleViewAction 
		pTempObj = new QAction
		pTempObj.pObject = QDockWidget_toggleViewAction(pObject)
		return pTempObj

	Func widget 
		pTempObj = new QWidget
		pTempObj.pObject = QDockWidget_widget(pObject)
		return pTempObj

	Func allowedAreasChanged P1
		return QDockWidget_allowedAreasChanged(pObject,P1)

	Func dockLocationChanged P1
		return QDockWidget_dockLocationChanged(pObject,P1)

	Func featuresChanged P1
		return QDockWidget_featuresChanged(pObject,P1)

	Func topLevelChanged P1
		return QDockWidget_topLevelChanged(pObject,P1)

	Func visibilityChanged P1
		return QDockWidget_visibilityChanged(pObject,P1)

	Func setallowedAreasChangedEvent P1
		return QDockWidget_setallowedAreasChangedEvent(pObject,P1)

	Func setdockLocationChangedEvent P1
		return QDockWidget_setdockLocationChangedEvent(pObject,P1)

	Func setfeaturesChangedEvent P1
		return QDockWidget_setfeaturesChangedEvent(pObject,P1)

	Func settopLevelChangedEvent P1
		return QDockWidget_settopLevelChangedEvent(pObject,P1)

	Func setvisibilityChangedEvent P1
		return QDockWidget_setvisibilityChangedEvent(pObject,P1)

	Func getallowedAreasChangedEvent 
		return QDockWidget_getallowedAreasChangedEvent(pObject)

	Func getdockLocationChangedEvent 
		return QDockWidget_getdockLocationChangedEvent(pObject)

	Func getfeaturesChangedEvent 
		return QDockWidget_getfeaturesChangedEvent(pObject)

	Func gettopLevelChangedEvent 
		return QDockWidget_gettopLevelChangedEvent(pObject)

	Func getvisibilityChangedEvent 
		return QDockWidget_getvisibilityChangedEvent(pObject)

Class QTabWidget from QWidget

	pObject

	Func init P1
		pObject = QTabWidget_new(GetObjectPointerFromRingObject(P1))
		return self

	Func delete
		pObject = QTabWidget_delete(pObject)

	Func ObjectPointer
		return pObject

	Func tabBar 
		pTempObj = new QTabBar
		pTempObj.pObject = QTabWidget_tabBar(pObject)
		return pTempObj

	Func addTab P1,P2
		return QTabWidget_addTab(pObject,GetObjectPointerFromRingObject(P1),P2)

	Func clear 
		return QTabWidget_clear(pObject)

	Func cornerWidget P1
		pTempObj = new QWidget
		pTempObj.pObject = QTabWidget_cornerWidget(pObject,P1)
		return pTempObj

	Func count 
		return QTabWidget_count(pObject)

	Func currentIndex 
		return QTabWidget_currentIndex(pObject)

	Func currentWidget 
		pTempObj = new QWidget
		pTempObj.pObject = QTabWidget_currentWidget(pObject)
		return pTempObj

	Func documentMode 
		return QTabWidget_documentMode(pObject)

	Func elideMode 
		return QTabWidget_elideMode(pObject)

	Func iconSize 
		pTempObj = new QSize
		pTempObj.pObject = QTabWidget_iconSize(pObject)
		return pTempObj

	Func indexOf P1
		return QTabWidget_indexOf(pObject,GetObjectPointerFromRingObject(P1))

	Func insertTab P1,P2,P3
		return QTabWidget_insertTab(pObject,P1,GetObjectPointerFromRingObject(P2),P3)

	Func isMovable 
		return QTabWidget_isMovable(pObject)

	Func isTabEnabled P1
		return QTabWidget_isTabEnabled(pObject,P1)

	Func removeTab P1
		return QTabWidget_removeTab(pObject,P1)

	Func setCornerWidget P1,P2
		return QTabWidget_setCornerWidget(pObject,GetObjectPointerFromRingObject(P1),P2)

	Func setDocumentMode P1
		return QTabWidget_setDocumentMode(pObject,P1)

	Func setElideMode P1
		return QTabWidget_setElideMode(pObject,P1)

	Func setIconSize P1
		return QTabWidget_setIconSize(pObject,GetObjectPointerFromRingObject(P1))

	Func setMovable P1
		return QTabWidget_setMovable(pObject,P1)

	Func setTabEnabled P1,P2
		return QTabWidget_setTabEnabled(pObject,P1,P2)

	Func setTabIcon P1,P2
		return QTabWidget_setTabIcon(pObject,P1,GetObjectPointerFromRingObject(P2))

	Func setTabText P1,P2
		return QTabWidget_setTabText(pObject,P1,P2)

	Func setTabToolTip P1,P2
		return QTabWidget_setTabToolTip(pObject,P1,P2)

	Func setTabWhatsThis P1,P2
		return QTabWidget_setTabWhatsThis(pObject,P1,P2)

	Func setTabsClosable P1
		return QTabWidget_setTabsClosable(pObject,P1)

	Func setUsesScrollButtons P1
		return QTabWidget_setUsesScrollButtons(pObject,P1)

	Func tabIcon P1
		pTempObj = new QIcon
		pTempObj.pObject = QTabWidget_tabIcon(pObject,P1)
		return pTempObj

	Func tabText P1
		return QTabWidget_tabText(pObject,P1)

	Func tabToolTip P1
		return QTabWidget_tabToolTip(pObject,P1)

	Func tabWhatsThis P1
		return QTabWidget_tabWhatsThis(pObject,P1)

	Func tabsClosable 
		return QTabWidget_tabsClosable(pObject)

	Func usesScrollButtons 
		return QTabWidget_usesScrollButtons(pObject)

	Func widget P1
		pTempObj = new QWidget
		pTempObj.pObject = QTabWidget_widget(pObject,P1)
		return pTempObj

	Func heightForWidth P1
		return QTabWidget_heightForWidth(pObject,P1)

	Func minimumSizeHint 
		pTempObj = new QSize
		pTempObj.pObject = QTabWidget_minimumSizeHint(pObject)
		return pTempObj

	Func sizeHint 
		pTempObj = new QSize
		pTempObj.pObject = QTabWidget_sizeHint(pObject)
		return pTempObj

	Func setCurrentIndex P1
		return QTabWidget_setCurrentIndex(pObject,P1)

	Func setCurrentWidget P1
		return QTabWidget_setCurrentWidget(pObject,GetObjectPointerFromRingObject(P1))

	Func setcurrentChangedEvent P1
		return QTabWidget_setcurrentChangedEvent(pObject,P1)

	Func settabCloseRequestedEvent P1
		return QTabWidget_settabCloseRequestedEvent(pObject,P1)

	Func getcurrentChangedEvent 
		return QTabWidget_getcurrentChangedEvent(pObject)

	Func gettabCloseRequestedEvent 
		return QTabWidget_gettabCloseRequestedEvent(pObject)

	Func geteventparameters 
		return QTabWidget_geteventparameters(pObject)

Class QTableWidgetItem

	pObject

	Func init P1
		pObject = QTableWidgetItem_new(P1)
		return self

	Func delete
		pObject = QTableWidgetItem_delete(pObject)

	Func ObjectPointer
		return pObject

	Func background 
		pTempObj = new QBrush
		pTempObj.pObject = QTableWidgetItem_background(pObject)
		return pTempObj

	Func checkState 
		return QTableWidgetItem_checkState(pObject)

	Func clone 
		pTempObj = new QTableWidgetItem
		pTempObj.pObject = QTableWidgetItem_clone(pObject)
		return pTempObj

	Func column 
		return QTableWidgetItem_column(pObject)

	Func data P1
		pTempObj = new QVariant
		pTempObj.pObject = QTableWidgetItem_data(pObject,P1)
		return pTempObj

	Func flags 
		return QTableWidgetItem_flags(pObject)

	Func font 
		pTempObj = new QFont
		pTempObj.pObject = QTableWidgetItem_font(pObject)
		return pTempObj

	Func foreground 
		pTempObj = new QBrush
		pTempObj.pObject = QTableWidgetItem_foreground(pObject)
		return pTempObj

	Func icon 
		pTempObj = new QIcon
		pTempObj.pObject = QTableWidgetItem_icon(pObject)
		return pTempObj

	Func isSelected 
		return QTableWidgetItem_isSelected(pObject)

	Func read P1
		return QTableWidgetItem_read(pObject,GetObjectPointerFromRingObject(P1))

	Func row 
		return QTableWidgetItem_row(pObject)

	Func setBackground P1
		return QTableWidgetItem_setBackground(pObject,GetObjectPointerFromRingObject(P1))

	Func setCheckState P1
		return QTableWidgetItem_setCheckState(pObject,P1)

	Func setData P1,P2
		return QTableWidgetItem_setData(pObject,P1,GetObjectPointerFromRingObject(P2))

	Func setFlags P1
		return QTableWidgetItem_setFlags(pObject,P1)

	Func setFont P1
		return QTableWidgetItem_setFont(pObject,GetObjectPointerFromRingObject(P1))

	Func setForeground P1
		return QTableWidgetItem_setForeground(pObject,GetObjectPointerFromRingObject(P1))

	Func setIcon P1
		return QTableWidgetItem_setIcon(pObject,GetObjectPointerFromRingObject(P1))

	Func setSelected P1
		return QTableWidgetItem_setSelected(pObject,P1)

	Func setSizeHint P1
		return QTableWidgetItem_setSizeHint(pObject,GetObjectPointerFromRingObject(P1))

	Func setStatusTip P1
		return QTableWidgetItem_setStatusTip(pObject,P1)

	Func setText P1
		return QTableWidgetItem_setText(pObject,P1)

	Func setTextAlignment P1
		return QTableWidgetItem_setTextAlignment(pObject,P1)

	Func setToolTip P1
		return QTableWidgetItem_setToolTip(pObject,P1)

	Func setWhatsThis P1
		return QTableWidgetItem_setWhatsThis(pObject,P1)

	Func sizeHint 
		pTempObj = new QSize
		pTempObj.pObject = QTableWidgetItem_sizeHint(pObject)
		return pTempObj

	Func statusTip 
		return QTableWidgetItem_statusTip(pObject)

	Func tableWidget 
		pTempObj = new QTableWidget
		pTempObj.pObject = QTableWidgetItem_tableWidget(pObject)
		return pTempObj

	Func text 
		return QTableWidgetItem_text(pObject)

	Func textAlignment 
		return QTableWidgetItem_textAlignment(pObject)

	Func toolTip 
		return QTableWidgetItem_toolTip(pObject)

	Func type 
		return QTableWidgetItem_type(pObject)

	Func whatsThis 
		return QTableWidgetItem_whatsThis(pObject)

	Func write P1
		return QTableWidgetItem_write(pObject,GetObjectPointerFromRingObject(P1))

Class QFrame from QWidget

	pObject

	Func init P1,P2
		pObject = QFrame_new(GetObjectPointerFromRingObject(P1),P2)
		return self

	Func delete
		pObject = QFrame_delete(pObject)

	Func ObjectPointer
		return pObject

	Func frameRect 
		pTempObj = new QRect
		pTempObj.pObject = QFrame_frameRect(pObject)
		return pTempObj

	Func frameShadow 
		return QFrame_frameShadow(pObject)

	Func frameShape 
		return QFrame_frameShape(pObject)

	Func frameStyle 
		return QFrame_frameStyle(pObject)

	Func frameWidth 
		return QFrame_frameWidth(pObject)

	Func lineWidth 
		return QFrame_lineWidth(pObject)

	Func midLineWidth 
		return QFrame_midLineWidth(pObject)

	Func setFrameRect P1
		return QFrame_setFrameRect(pObject,GetObjectPointerFromRingObject(P1))

	Func setFrameShadow P1
		return QFrame_setFrameShadow(pObject,P1)

	Func setFrameShape P1
		return QFrame_setFrameShape(pObject,P1)

	Func setFrameStyle P1
		return QFrame_setFrameStyle(pObject,P1)

	Func setLineWidth P1
		return QFrame_setLineWidth(pObject,P1)

	Func setMidLineWidth P1
		return QFrame_setMidLineWidth(pObject,P1)

	Func sizeHint 
		pTempObj = new QSize
		pTempObj.pObject = QFrame_sizeHint(pObject)
		return pTempObj

Class QAbstractScrollArea from QFrame

	pObject

	Func init P1
		pObject = QAbstractScrollArea_new(GetObjectPointerFromRingObject(P1))
		return self

	Func delete
		pObject = QAbstractScrollArea_delete(pObject)

	Func ObjectPointer
		return pObject

	Func addScrollBarWidget P1,P2
		return QAbstractScrollArea_addScrollBarWidget(pObject,GetObjectPointerFromRingObject(P1),P2)

	Func cornerWidget 
		pTempObj = new QWidget
		pTempObj.pObject = QAbstractScrollArea_cornerWidget(pObject)
		return pTempObj

	Func horizontalScrollBar 
		pTempObj = new QScrollBar
		pTempObj.pObject = QAbstractScrollArea_horizontalScrollBar(pObject)
		return pTempObj

	Func horizontalScrollBarPolicy 
		return QAbstractScrollArea_horizontalScrollBarPolicy(pObject)

	Func maximumViewportSize 
		pTempObj = new QSize
		pTempObj.pObject = QAbstractScrollArea_maximumViewportSize(pObject)
		return pTempObj

	Func scrollBarWidgets P1
		return QAbstractScrollArea_scrollBarWidgets(pObject,P1)

	Func setCornerWidget P1
		return QAbstractScrollArea_setCornerWidget(pObject,GetObjectPointerFromRingObject(P1))

	Func setHorizontalScrollBar P1
		return QAbstractScrollArea_setHorizontalScrollBar(pObject,GetObjectPointerFromRingObject(P1))

	Func setHorizontalScrollBarPolicy P1
		return QAbstractScrollArea_setHorizontalScrollBarPolicy(pObject,P1)

	Func setVerticalScrollBar P1
		return QAbstractScrollArea_setVerticalScrollBar(pObject,GetObjectPointerFromRingObject(P1))

	Func setVerticalScrollBarPolicy P1
		return QAbstractScrollArea_setVerticalScrollBarPolicy(pObject,P1)

	Func setViewport P1
		return QAbstractScrollArea_setViewport(pObject,GetObjectPointerFromRingObject(P1))

	Func verticalScrollBar 
		pTempObj = new QScrollBar
		pTempObj.pObject = QAbstractScrollArea_verticalScrollBar(pObject)
		return pTempObj

	Func verticalScrollBarPolicy 
		return QAbstractScrollArea_verticalScrollBarPolicy(pObject)

	Func viewport 
		pTempObj = new QWidget
		pTempObj.pObject = QAbstractScrollArea_viewport(pObject)
		return pTempObj

Class QAbstractItemView from QAbstractScrollArea

	pObject

	Func init P1
		pObject = QAbstractItemView_new(GetObjectPointerFromRingObject(P1))
		return self

	Func delete
		pObject = QAbstractItemView_delete(pObject)

	Func ObjectPointer
		return pObject

	Func alternatingRowColors 
		return QAbstractItemView_alternatingRowColors(pObject)

	Func autoScrollMargin 
		return QAbstractItemView_autoScrollMargin(pObject)

	Func closePersistentEditor P1
		return QAbstractItemView_closePersistentEditor(pObject,GetObjectPointerFromRingObject(P1))

	Func currentIndex 
		pTempObj = new QModelIndex
		pTempObj.pObject = QAbstractItemView_currentIndex(pObject)
		return pTempObj

	Func defaultDropAction 
		return QAbstractItemView_defaultDropAction(pObject)

	Func dragDropMode 
		return QAbstractItemView_dragDropMode(pObject)

	Func dragDropOverwriteMode 
		return QAbstractItemView_dragDropOverwriteMode(pObject)

	Func dragEnabled 
		return QAbstractItemView_dragEnabled(pObject)

	Func editTriggers 
		return QAbstractItemView_editTriggers(pObject)

	Func hasAutoScroll 
		return QAbstractItemView_hasAutoScroll(pObject)

	Func horizontalScrollMode 
		return QAbstractItemView_horizontalScrollMode(pObject)

	Func iconSize 
		pTempObj = new QSize
		pTempObj.pObject = QAbstractItemView_iconSize(pObject)
		return pTempObj

	Func indexAt P1
		pTempObj = new QModelIndex
		pTempObj.pObject = QAbstractItemView_indexAt(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func indexWidget P1
		pTempObj = new QWidget
		pTempObj.pObject = QAbstractItemView_indexWidget(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func itemDelegate P1
		return QAbstractItemView_itemDelegate(pObject,GetObjectPointerFromRingObject(P1))

	Func itemDelegateForColumn P1
		return QAbstractItemView_itemDelegateForColumn(pObject,P1)

	Func itemDelegateForRow P1
		return QAbstractItemView_itemDelegateForRow(pObject,P1)

	Func keyboardSearch P1
		return QAbstractItemView_keyboardSearch(pObject,P1)

	Func model 
		return QAbstractItemView_model(pObject)

	Func openPersistentEditor P1
		return QAbstractItemView_openPersistentEditor(pObject,GetObjectPointerFromRingObject(P1))

	Func rootIndex 
		pTempObj = new QModelIndex
		pTempObj.pObject = QAbstractItemView_rootIndex(pObject)
		return pTempObj

	Func scrollTo P1,P2
		return QAbstractItemView_scrollTo(pObject,GetObjectPointerFromRingObject(P1),P2)

	Func selectionBehavior 
		return QAbstractItemView_selectionBehavior(pObject)

	Func selectionMode 
		return QAbstractItemView_selectionMode(pObject)

	Func selectionModel 
		return QAbstractItemView_selectionModel(pObject)

	Func setAlternatingRowColors P1
		return QAbstractItemView_setAlternatingRowColors(pObject,P1)

	Func setAutoScroll P1
		return QAbstractItemView_setAutoScroll(pObject,P1)

	Func setAutoScrollMargin P1
		return QAbstractItemView_setAutoScrollMargin(pObject,P1)

	Func setDefaultDropAction P1
		return QAbstractItemView_setDefaultDropAction(pObject,P1)

	Func setDragDropMode P1
		return QAbstractItemView_setDragDropMode(pObject,P1)

	Func setDragDropOverwriteMode P1
		return QAbstractItemView_setDragDropOverwriteMode(pObject,P1)

	Func setDragEnabled P1
		return QAbstractItemView_setDragEnabled(pObject,P1)

	Func setDropIndicatorShown P1
		return QAbstractItemView_setDropIndicatorShown(pObject,P1)

	Func setEditTriggers P1
		return QAbstractItemView_setEditTriggers(pObject,P1)

	Func setHorizontalScrollMode P1
		return QAbstractItemView_setHorizontalScrollMode(pObject,P1)

	Func setIconSize P1
		return QAbstractItemView_setIconSize(pObject,GetObjectPointerFromRingObject(P1))

	Func setIndexWidget P1,P2
		return QAbstractItemView_setIndexWidget(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2))

	Func setItemDelegate P1
		return QAbstractItemView_setItemDelegate(pObject,GetObjectPointerFromRingObject(P1))

	Func setItemDelegateForColumn P1,P2
		return QAbstractItemView_setItemDelegateForColumn(pObject,P1,GetObjectPointerFromRingObject(P2))

	Func setItemDelegateForRow P1,P2
		return QAbstractItemView_setItemDelegateForRow(pObject,P1,GetObjectPointerFromRingObject(P2))

	Func setModel P1
		return QAbstractItemView_setModel(pObject,GetObjectPointerFromRingObject(P1))

	Func setSelectionBehavior P1
		return QAbstractItemView_setSelectionBehavior(pObject,P1)

	Func setSelectionMode P1
		return QAbstractItemView_setSelectionMode(pObject,P1)

	Func setSelectionModel P1
		return QAbstractItemView_setSelectionModel(pObject,GetObjectPointerFromRingObject(P1))

	Func setTabKeyNavigation P1
		return QAbstractItemView_setTabKeyNavigation(pObject,P1)

	Func setTextElideMode P1
		return QAbstractItemView_setTextElideMode(pObject,P1)

	Func setVerticalScrollMode P1
		return QAbstractItemView_setVerticalScrollMode(pObject,P1)

	Func showDropIndicator 
		return QAbstractItemView_showDropIndicator(pObject)

	Func sizeHintForColumn P1
		return QAbstractItemView_sizeHintForColumn(pObject,P1)

	Func sizeHintForIndex P1
		pTempObj = new QSize
		pTempObj.pObject = QAbstractItemView_sizeHintForIndex(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func sizeHintForRow P1
		return QAbstractItemView_sizeHintForRow(pObject,P1)

	Func tabKeyNavigation 
		return QAbstractItemView_tabKeyNavigation(pObject)

	Func textElideMode 
		return QAbstractItemView_textElideMode(pObject)

	Func verticalScrollMode 
		return QAbstractItemView_verticalScrollMode(pObject)

	Func visualRect P1
		pTempObj = new QRect
		pTempObj.pObject = QAbstractItemView_visualRect(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func clearSelection 
		return QAbstractItemView_clearSelection(pObject)

	Func edit P1
		return QAbstractItemView_edit(pObject,GetObjectPointerFromRingObject(P1))

	Func scrollToBottom 
		return QAbstractItemView_scrollToBottom(pObject)

	Func scrollToTop 
		return QAbstractItemView_scrollToTop(pObject)

	Func setCurrentIndex P1
		return QAbstractItemView_setCurrentIndex(pObject,GetObjectPointerFromRingObject(P1))

	Func update P1
		return QAbstractItemView_update(pObject,GetObjectPointerFromRingObject(P1))

Class QTableView from QAbstractItemView

	pObject

	Func init P1
		pObject = QTableView_new(GetObjectPointerFromRingObject(P1))
		return self

	Func delete
		pObject = QTableView_delete(pObject)

	Func ObjectPointer
		return pObject

	Func clearSpans 
		return QTableView_clearSpans(pObject)

	Func columnAt P1
		return QTableView_columnAt(pObject,P1)

	Func columnSpan P1,P2
		return QTableView_columnSpan(pObject,P1,P2)

	Func columnViewportPosition P1
		return QTableView_columnViewportPosition(pObject,P1)

	Func columnWidth P1
		return QTableView_columnWidth(pObject,P1)

	Func gridStyle 
		return QTableView_gridStyle(pObject)

	Func horizontalHeader 
		pTempObj = new QHeaderView
		pTempObj.pObject = QTableView_horizontalHeader(pObject)
		return pTempObj

	Func isColumnHidden P1
		return QTableView_isColumnHidden(pObject,P1)

	Func isCornerButtonEnabled 
		return QTableView_isCornerButtonEnabled(pObject)

	Func isRowHidden P1
		return QTableView_isRowHidden(pObject,P1)

	Func isSortingEnabled 
		return QTableView_isSortingEnabled(pObject)

	Func rowAt P1
		return QTableView_rowAt(pObject,P1)

	Func rowHeight P1
		return QTableView_rowHeight(pObject,P1)

	Func rowSpan P1,P2
		return QTableView_rowSpan(pObject,P1,P2)

	Func rowViewportPosition P1
		return QTableView_rowViewportPosition(pObject,P1)

	Func setColumnHidden P1,P2
		return QTableView_setColumnHidden(pObject,P1,P2)

	Func setColumnWidth P1,P2
		return QTableView_setColumnWidth(pObject,P1,P2)

	Func setCornerButtonEnabled P1
		return QTableView_setCornerButtonEnabled(pObject,P1)

	Func setGridStyle P1
		return QTableView_setGridStyle(pObject,P1)

	Func setHorizontalHeader P1
		return QTableView_setHorizontalHeader(pObject,GetObjectPointerFromRingObject(P1))

	Func setRowHeight P1,P2
		return QTableView_setRowHeight(pObject,P1,P2)

	Func setRowHidden P1,P2
		return QTableView_setRowHidden(pObject,P1,P2)

	Func setSortingEnabled P1
		return QTableView_setSortingEnabled(pObject,P1)

	Func setSpan P1,P2,P3,P4
		return QTableView_setSpan(pObject,P1,P2,P3,P4)

	Func setVerticalHeader P1
		return QTableView_setVerticalHeader(pObject,GetObjectPointerFromRingObject(P1))

	Func setWordWrap P1
		return QTableView_setWordWrap(pObject,P1)

	Func showGrid 
		return QTableView_showGrid(pObject)

	Func sortByColumn P1,P2
		return QTableView_sortByColumn(pObject,P1,P2)

	Func verticalHeader 
		pTempObj = new QHeaderView
		pTempObj.pObject = QTableView_verticalHeader(pObject)
		return pTempObj

	Func wordWrap 
		return QTableView_wordWrap(pObject)

	Func hideColumn P1
		return QTableView_hideColumn(pObject,P1)

	Func hideRow P1
		return QTableView_hideRow(pObject,P1)

	Func resizeColumnToContents P1
		return QTableView_resizeColumnToContents(pObject,P1)

	Func resizeColumnsToContents 
		return QTableView_resizeColumnsToContents(pObject)

	Func resizeRowToContents P1
		return QTableView_resizeRowToContents(pObject,P1)

	Func resizeRowsToContents 
		return QTableView_resizeRowsToContents(pObject)

	Func selectColumn P1
		return QTableView_selectColumn(pObject,P1)

	Func selectRow P1
		return QTableView_selectRow(pObject,P1)

	Func setShowGrid P1
		return QTableView_setShowGrid(pObject,P1)

	Func showColumn P1
		return QTableView_showColumn(pObject,P1)

	Func showRow P1
		return QTableView_showRow(pObject,P1)

Class QTableWidget from QTableView

	pObject

	Func init P1
		pObject = QTableWidget_new(GetObjectPointerFromRingObject(P1))
		return self

	Func delete
		pObject = QTableWidget_delete(pObject)

	Func ObjectPointer
		return pObject

	Func cellWidget P1,P2
		pTempObj = new QWidget
		pTempObj.pObject = QTableWidget_cellWidget(pObject,P1,P2)
		return pTempObj

	Func closePersistentEditor P1
		return QTableWidget_closePersistentEditor(pObject,GetObjectPointerFromRingObject(P1))

	Func column P1
		return QTableWidget_column(pObject,GetObjectPointerFromRingObject(P1))

	Func columnCount 
		return QTableWidget_columnCount(pObject)

	Func currentColumn 
		return QTableWidget_currentColumn(pObject)

	Func currentItem 
		pTempObj = new QTableWidgetItem
		pTempObj.pObject = QTableWidget_currentItem(pObject)
		return pTempObj

	Func currentRow 
		return QTableWidget_currentRow(pObject)

	Func editItem P1
		return QTableWidget_editItem(pObject,GetObjectPointerFromRingObject(P1))

	Func horizontalHeaderItem P1
		pTempObj = new QTableWidgetItem
		pTempObj.pObject = QTableWidget_horizontalHeaderItem(pObject,P1)
		return pTempObj

	Func item P1,P2
		pTempObj = new QTableWidgetItem
		pTempObj.pObject = QTableWidget_item(pObject,P1,P2)
		return pTempObj

	Func itemAt P1,P2
		pTempObj = new QTableWidgetItem
		pTempObj.pObject = QTableWidget_itemAt(pObject,P1,P2)
		return pTempObj

	Func itemPrototype 
		pTempObj = new QTableWidgetItem
		pTempObj.pObject = QTableWidget_itemPrototype(pObject)
		return pTempObj

	Func openPersistentEditor P1
		return QTableWidget_openPersistentEditor(pObject,GetObjectPointerFromRingObject(P1))

	Func removeCellWidget P1,P2
		return QTableWidget_removeCellWidget(pObject,P1,P2)

	Func row P1
		return QTableWidget_row(pObject,GetObjectPointerFromRingObject(P1))

	Func rowCount 
		return QTableWidget_rowCount(pObject)

	Func selectedItems 
		return QTableWidget_selectedItems(pObject)

	Func selectedRanges 
		return QTableWidget_selectedRanges(pObject)

	Func setCellWidget P1,P2,P3
		return QTableWidget_setCellWidget(pObject,P1,P2,GetObjectPointerFromRingObject(P3))

	Func setColumnCount P1
		return QTableWidget_setColumnCount(pObject,P1)

	Func setCurrentCell P1,P2
		return QTableWidget_setCurrentCell(pObject,P1,P2)

	Func setCurrentItem P1
		return QTableWidget_setCurrentItem(pObject,GetObjectPointerFromRingObject(P1))

	Func setHorizontalHeaderItem P1,P2
		return QTableWidget_setHorizontalHeaderItem(pObject,P1,GetObjectPointerFromRingObject(P2))

	Func setHorizontalHeaderLabels P1
		return QTableWidget_setHorizontalHeaderLabels(pObject,GetObjectPointerFromRingObject(P1))

	Func setItem P1,P2,P3
		return QTableWidget_setItem(pObject,P1,P2,GetObjectPointerFromRingObject(P3))

	Func setItemPrototype P1
		return QTableWidget_setItemPrototype(pObject,GetObjectPointerFromRingObject(P1))

	Func setRowCount P1
		return QTableWidget_setRowCount(pObject,P1)

	Func setVerticalHeaderItem P1,P2
		return QTableWidget_setVerticalHeaderItem(pObject,P1,GetObjectPointerFromRingObject(P2))

	Func sortItems P1,P2
		return QTableWidget_sortItems(pObject,P1,P2)

	Func takeHorizontalHeaderItem P1
		pTempObj = new QTableWidgetItem
		pTempObj.pObject = QTableWidget_takeHorizontalHeaderItem(pObject,P1)
		return pTempObj

	Func takeItem P1,P2
		pTempObj = new QTableWidgetItem
		pTempObj.pObject = QTableWidget_takeItem(pObject,P1,P2)
		return pTempObj

	Func takeVerticalHeaderItem P1
		pTempObj = new QTableWidgetItem
		pTempObj.pObject = QTableWidget_takeVerticalHeaderItem(pObject,P1)
		return pTempObj

	Func verticalHeaderItem P1
		pTempObj = new QTableWidgetItem
		pTempObj.pObject = QTableWidget_verticalHeaderItem(pObject,P1)
		return pTempObj

	Func visualColumn P1
		return QTableWidget_visualColumn(pObject,P1)

	Func visualItemRect P1
		pTempObj = new QRect
		pTempObj.pObject = QTableWidget_visualItemRect(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func visualRow P1
		return QTableWidget_visualRow(pObject,P1)

	Func clear 
		return QTableWidget_clear(pObject)

	Func clearContents 
		return QTableWidget_clearContents(pObject)

	Func insertColumn P1
		return QTableWidget_insertColumn(pObject,P1)

	Func insertRow P1
		return QTableWidget_insertRow(pObject,P1)

	Func removeColumn P1
		return QTableWidget_removeColumn(pObject,P1)

	Func removeRow P1
		return QTableWidget_removeRow(pObject,P1)

	Func scrollToItem P1,P2
		return QTableWidget_scrollToItem(pObject,GetObjectPointerFromRingObject(P1),P2)

	Func setcellActivatedEvent P1
		return QTableWidget_setcellActivatedEvent(pObject,P1)

	Func setcellChangedEvent P1
		return QTableWidget_setcellChangedEvent(pObject,P1)

	Func setcellClickedEvent P1
		return QTableWidget_setcellClickedEvent(pObject,P1)

	Func setcellDoubleClickedEvent P1
		return QTableWidget_setcellDoubleClickedEvent(pObject,P1)

	Func setcellEnteredEvent P1
		return QTableWidget_setcellEnteredEvent(pObject,P1)

	Func setcellPressedEvent P1
		return QTableWidget_setcellPressedEvent(pObject,P1)

	Func setcurrentCellChangedEvent P1
		return QTableWidget_setcurrentCellChangedEvent(pObject,P1)

	Func setcurrentItemChangedEvent P1
		return QTableWidget_setcurrentItemChangedEvent(pObject,P1)

	Func setitemActivatedEvent P1
		return QTableWidget_setitemActivatedEvent(pObject,P1)

	Func setitemChangedEvent P1
		return QTableWidget_setitemChangedEvent(pObject,P1)

	Func setitemClickedEvent P1
		return QTableWidget_setitemClickedEvent(pObject,P1)

	Func setitemDoubleClickedEvent P1
		return QTableWidget_setitemDoubleClickedEvent(pObject,P1)

	Func setitemEnteredEvent P1
		return QTableWidget_setitemEnteredEvent(pObject,P1)

	Func setitemPressedEvent P1
		return QTableWidget_setitemPressedEvent(pObject,P1)

	Func setitemSelectionChangedEvent P1
		return QTableWidget_setitemSelectionChangedEvent(pObject,P1)

	Func getcellActivatedEvent 
		return QTableWidget_getcellActivatedEvent(pObject)

	Func getcellChangedEvent 
		return QTableWidget_getcellChangedEvent(pObject)

	Func getcellClickedEvent 
		return QTableWidget_getcellClickedEvent(pObject)

	Func getcellDoubleClickedEvent 
		return QTableWidget_getcellDoubleClickedEvent(pObject)

	Func getcellEnteredEvent 
		return QTableWidget_getcellEnteredEvent(pObject)

	Func getcellPressedEvent 
		return QTableWidget_getcellPressedEvent(pObject)

	Func getcurrentCellChangedEvent 
		return QTableWidget_getcurrentCellChangedEvent(pObject)

	Func getcurrentItemChangedEvent 
		return QTableWidget_getcurrentItemChangedEvent(pObject)

	Func getitemActivatedEvent 
		return QTableWidget_getitemActivatedEvent(pObject)

	Func getitemChangedEvent 
		return QTableWidget_getitemChangedEvent(pObject)

	Func getitemClickedEvent 
		return QTableWidget_getitemClickedEvent(pObject)

	Func getitemDoubleClickedEvent 
		return QTableWidget_getitemDoubleClickedEvent(pObject)

	Func getitemEnteredEvent 
		return QTableWidget_getitemEnteredEvent(pObject)

	Func getitemPressedEvent 
		return QTableWidget_getitemPressedEvent(pObject)

	Func getitemSelectionChangedEvent 
		return QTableWidget_getitemSelectionChangedEvent(pObject)

Class QProgressBar from QWidget

	pObject

	Func init P1
		pObject = QProgressBar_new(GetObjectPointerFromRingObject(P1))
		return self

	Func delete
		pObject = QProgressBar_delete(pObject)

	Func ObjectPointer
		return pObject

	Func alignment 
		return QProgressBar_alignment(pObject)

	Func format 
		return QProgressBar_format(pObject)

	Func invertedAppearance 
		return QProgressBar_invertedAppearance(pObject)

	Func isTextVisible 
		return QProgressBar_isTextVisible(pObject)

	Func maximum 
		return QProgressBar_maximum(pObject)

	Func minimum 
		return QProgressBar_minimum(pObject)

	Func orientation 
		return QProgressBar_orientation(pObject)

	Func resetFormat 
		return QProgressBar_resetFormat(pObject)

	Func setAlignment P1
		return QProgressBar_setAlignment(pObject,P1)

	Func setFormat P1
		return QProgressBar_setFormat(pObject,P1)

	Func setInvertedAppearance P1
		return QProgressBar_setInvertedAppearance(pObject,P1)

	Func setTextDirection P1
		return QProgressBar_setTextDirection(pObject,P1)

	Func setTextVisible P1
		return QProgressBar_setTextVisible(pObject,P1)

	Func text 
		return QProgressBar_text(pObject)

	Func textDirection 
		return QProgressBar_textDirection(pObject)

	Func value 
		return QProgressBar_value(pObject)

	Func reset 
		return QProgressBar_reset(pObject)

	Func setMaximum P1
		return QProgressBar_setMaximum(pObject,P1)

	Func setMinimum P1
		return QProgressBar_setMinimum(pObject,P1)

	Func setOrientation P1
		return QProgressBar_setOrientation(pObject,P1)

	Func setRange P1,P2
		return QProgressBar_setRange(pObject,P1,P2)

	Func setValue P1
		return QProgressBar_setValue(pObject,P1)

	Func setvalueChangedEvent P1
		return QProgressBar_setvalueChangedEvent(pObject,P1)

	Func getvalueChangedEvent 
		return QProgressBar_getvalueChangedEvent(pObject)

Class QSpinBox from QWidget

	pObject

	Func init P1
		pObject = QSpinBox_new(GetObjectPointerFromRingObject(P1))
		return self

	Func delete
		pObject = QSpinBox_delete(pObject)

	Func ObjectPointer
		return pObject

	Func cleanText 
		return QSpinBox_cleanText(pObject)

	Func displayIntegerBase 
		return QSpinBox_displayIntegerBase(pObject)

	Func maximum 
		return QSpinBox_maximum(pObject)

	Func minimum 
		return QSpinBox_minimum(pObject)

	Func prefix 
		return QSpinBox_prefix(pObject)

	Func setDisplayIntegerBase P1
		return QSpinBox_setDisplayIntegerBase(pObject,P1)

	Func setMaximum P1
		return QSpinBox_setMaximum(pObject,P1)

	Func setMinimum P1
		return QSpinBox_setMinimum(pObject,P1)

	Func setPrefix P1
		return QSpinBox_setPrefix(pObject,P1)

	Func setRange P1,P2
		return QSpinBox_setRange(pObject,P1,P2)

	Func setSingleStep P1
		return QSpinBox_setSingleStep(pObject,P1)

	Func setSuffix P1
		return QSpinBox_setSuffix(pObject,P1)

	Func singleStep 
		return QSpinBox_singleStep(pObject)

	Func suffix 
		return QSpinBox_suffix(pObject)

	Func value 
		return QSpinBox_value(pObject)

	Func setValue P1
		return QSpinBox_setValue(pObject,P1)

	Func setvalueChangedEvent P1
		return QSpinBox_setvalueChangedEvent(pObject,P1)

	Func getvalueChangedEvent 
		return QSpinBox_getvalueChangedEvent(pObject)

Class QAbstractSlider from QWidget

	pObject

	Func init P1
		pObject = QAbstractSlider_new(GetObjectPointerFromRingObject(P1))
		return self

	Func delete
		pObject = QAbstractSlider_delete(pObject)

	Func ObjectPointer
		return pObject

	Func hasTracking 
		return QAbstractSlider_hasTracking(pObject)

	Func invertedAppearance 
		return QAbstractSlider_invertedAppearance(pObject)

	Func invertedControls 
		return QAbstractSlider_invertedControls(pObject)

	Func isSliderDown 
		return QAbstractSlider_isSliderDown(pObject)

	Func maximum 
		return QAbstractSlider_maximum(pObject)

	Func minimum 
		return QAbstractSlider_minimum(pObject)

	Func orientation 
		return QAbstractSlider_orientation(pObject)

	Func pageStep 
		return QAbstractSlider_pageStep(pObject)

	Func setInvertedAppearance P1
		return QAbstractSlider_setInvertedAppearance(pObject,P1)

	Func setInvertedControls P1
		return QAbstractSlider_setInvertedControls(pObject,P1)

	Func setMaximum P1
		return QAbstractSlider_setMaximum(pObject,P1)

	Func setMinimum P1
		return QAbstractSlider_setMinimum(pObject,P1)

	Func setPageStep P1
		return QAbstractSlider_setPageStep(pObject,P1)

	Func setSingleStep P1
		return QAbstractSlider_setSingleStep(pObject,P1)

	Func setSliderDown P1
		return QAbstractSlider_setSliderDown(pObject,P1)

	Func setSliderPosition P1
		return QAbstractSlider_setSliderPosition(pObject,P1)

	Func setTracking P1
		return QAbstractSlider_setTracking(pObject,P1)

	Func singleStep 
		return QAbstractSlider_singleStep(pObject)

	Func sliderPosition 
		return QAbstractSlider_sliderPosition(pObject)

	Func triggerAction P1
		return QAbstractSlider_triggerAction(pObject,P1)

	Func value 
		return QAbstractSlider_value(pObject)

	Func setOrientation P1
		return QAbstractSlider_setOrientation(pObject,P1)

	Func setRange P1,P2
		return QAbstractSlider_setRange(pObject,P1,P2)

	Func setValue P1
		return QAbstractSlider_setValue(pObject,P1)

Class QSlider from QAbstractSlider

	pObject

	Func init P1
		pObject = QSlider_new(GetObjectPointerFromRingObject(P1))
		return self

	Func delete
		pObject = QSlider_delete(pObject)

	Func ObjectPointer
		return pObject

	Func setTickInterval P1
		return QSlider_setTickInterval(pObject,P1)

	Func setTickPosition P1
		return QSlider_setTickPosition(pObject,P1)

	Func tickInterval 
		return QSlider_tickInterval(pObject)

	Func tickPosition 
		return QSlider_tickPosition(pObject)

	Func minimumSizeHint 
		pTempObj = new QSize
		pTempObj.pObject = QSlider_minimumSizeHint(pObject)
		return pTempObj

	Func sizeHint 
		pTempObj = new QSize
		pTempObj.pObject = QSlider_sizeHint(pObject)
		return pTempObj

	Func setactionTriggeredEvent P1
		return QSlider_setactionTriggeredEvent(pObject,P1)

	Func setrangeChangedEvent P1
		return QSlider_setrangeChangedEvent(pObject,P1)

	Func setsliderMovedEvent P1
		return QSlider_setsliderMovedEvent(pObject,P1)

	Func setsliderPressedEvent P1
		return QSlider_setsliderPressedEvent(pObject,P1)

	Func setsliderReleasedEvent P1
		return QSlider_setsliderReleasedEvent(pObject,P1)

	Func setvalueChangedEvent P1
		return QSlider_setvalueChangedEvent(pObject,P1)

	Func getactionTriggeredEvent 
		return QSlider_getactionTriggeredEvent(pObject)

	Func getrangeChangedEvent 
		return QSlider_getrangeChangedEvent(pObject)

	Func getsliderMovedEvent 
		return QSlider_getsliderMovedEvent(pObject)

	Func getsliderPressedEvent 
		return QSlider_getsliderPressedEvent(pObject)

	Func getsliderReleasedEvent 
		return QSlider_getsliderReleasedEvent(pObject)

	Func getvalueChangedEvent 
		return QSlider_getvalueChangedEvent(pObject)

Class QDateTimeEdit from QAbstractSpinBox

	pObject

	Func init P1
		pObject = QDateTimeEdit_new(GetObjectPointerFromRingObject(P1))
		return self

	Func delete
		pObject = QDateTimeEdit_delete(pObject)

	Func ObjectPointer
		return pObject

	Func calendarPopup 
		return QDateTimeEdit_calendarPopup(pObject)

	Func calendarWidget 
		pTempObj = new QCalendarWidget
		pTempObj.pObject = QDateTimeEdit_calendarWidget(pObject)
		return pTempObj

	Func clearMaximumDate 
		return QDateTimeEdit_clearMaximumDate(pObject)

	Func clearMaximumDateTime 
		return QDateTimeEdit_clearMaximumDateTime(pObject)

	Func clearMaximumTime 
		return QDateTimeEdit_clearMaximumTime(pObject)

	Func clearMinimumDate 
		return QDateTimeEdit_clearMinimumDate(pObject)

	Func clearMinimumDateTime 
		return QDateTimeEdit_clearMinimumDateTime(pObject)

	Func clearMinimumTime 
		return QDateTimeEdit_clearMinimumTime(pObject)

	Func currentSection 
		return QDateTimeEdit_currentSection(pObject)

	Func currentSectionIndex 
		return QDateTimeEdit_currentSectionIndex(pObject)

	Func date 
		pTempObj = new QDate
		pTempObj.pObject = QDateTimeEdit_date(pObject)
		return pTempObj

	Func dateTime 
		pTempObj = new QDateTime
		pTempObj.pObject = QDateTimeEdit_dateTime(pObject)
		return pTempObj

	Func displayFormat 
		return QDateTimeEdit_displayFormat(pObject)

	Func displayedSections 
		return QDateTimeEdit_displayedSections(pObject)

	Func maximumDate 
		pTempObj = new QDate
		pTempObj.pObject = QDateTimeEdit_maximumDate(pObject)
		return pTempObj

	Func maximumDateTime 
		pTempObj = new QDateTime
		pTempObj.pObject = QDateTimeEdit_maximumDateTime(pObject)
		return pTempObj

	Func maximumTime 
		pTempObj = new QTime
		pTempObj.pObject = QDateTimeEdit_maximumTime(pObject)
		return pTempObj

	Func minimumDate 
		pTempObj = new QDate
		pTempObj.pObject = QDateTimeEdit_minimumDate(pObject)
		return pTempObj

	Func minimumDateTime 
		pTempObj = new QDateTime
		pTempObj.pObject = QDateTimeEdit_minimumDateTime(pObject)
		return pTempObj

	Func minimumTime 
		pTempObj = new QTime
		pTempObj.pObject = QDateTimeEdit_minimumTime(pObject)
		return pTempObj

	Func sectionAt P1
		return QDateTimeEdit_sectionAt(pObject,P1)

	Func sectionCount 
		return QDateTimeEdit_sectionCount(pObject)

	Func sectionText P1
		return QDateTimeEdit_sectionText(pObject,P1)

	Func setCalendarPopup P1
		return QDateTimeEdit_setCalendarPopup(pObject,P1)

	Func setCalendarWidget P1
		return QDateTimeEdit_setCalendarWidget(pObject,GetObjectPointerFromRingObject(P1))

	Func setCurrentSection P1
		return QDateTimeEdit_setCurrentSection(pObject,P1)

	Func setCurrentSectionIndex P1
		return QDateTimeEdit_setCurrentSectionIndex(pObject,P1)

	Func setDateRange P1,P2
		return QDateTimeEdit_setDateRange(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2))

	Func setDateTimeRange P1,P2
		return QDateTimeEdit_setDateTimeRange(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2))

	Func setDisplayFormat P1
		return QDateTimeEdit_setDisplayFormat(pObject,P1)

	Func setMaximumDate P1
		return QDateTimeEdit_setMaximumDate(pObject,GetObjectPointerFromRingObject(P1))

	Func setMaximumDateTime P1
		return QDateTimeEdit_setMaximumDateTime(pObject,GetObjectPointerFromRingObject(P1))

	Func setMaximumTime P1
		return QDateTimeEdit_setMaximumTime(pObject,GetObjectPointerFromRingObject(P1))

	Func setMinimumDate P1
		return QDateTimeEdit_setMinimumDate(pObject,GetObjectPointerFromRingObject(P1))

	Func setMinimumDateTime P1
		return QDateTimeEdit_setMinimumDateTime(pObject,GetObjectPointerFromRingObject(P1))

	Func setMinimumTime P1
		return QDateTimeEdit_setMinimumTime(pObject,GetObjectPointerFromRingObject(P1))

	Func setSelectedSection P1
		return QDateTimeEdit_setSelectedSection(pObject,P1)

	Func setTimeRange P1,P2
		return QDateTimeEdit_setTimeRange(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2))

	Func setTimeSpec P1
		return QDateTimeEdit_setTimeSpec(pObject,P1)

	Func time 
		pTempObj = new QTime
		pTempObj.pObject = QDateTimeEdit_time(pObject)
		return pTempObj

	Func timeSpec 
		return QDateTimeEdit_timeSpec(pObject)

	Func setDate P1
		return QDateTimeEdit_setDate(pObject,GetObjectPointerFromRingObject(P1))

	Func setDateTime P1
		return QDateTimeEdit_setDateTime(pObject,GetObjectPointerFromRingObject(P1))

	Func setTime P1
		return QDateTimeEdit_setTime(pObject,GetObjectPointerFromRingObject(P1))

	Func setdateChangedEvent P1
		return QDateTimeEdit_setdateChangedEvent(pObject,P1)

	Func setdateTimeChangedEvent P1
		return QDateTimeEdit_setdateTimeChangedEvent(pObject,P1)

	Func settimeChangedEvent P1
		return QDateTimeEdit_settimeChangedEvent(pObject,P1)

	Func getdateChangedEvent 
		return QDateTimeEdit_getdateChangedEvent(pObject)

	Func getdateTimeChangedEvent 
		return QDateTimeEdit_getdateTimeChangedEvent(pObject)

	Func gettimeChangedEvent 
		return QDateTimeEdit_gettimeChangedEvent(pObject)

Class QAbstractSpinBox from QWidget

	pObject

	Func init P1
		pObject = QAbstractSpinBox_new(GetObjectPointerFromRingObject(P1))
		return self

	Func delete
		pObject = QAbstractSpinBox_delete(pObject)

	Func ObjectPointer
		return pObject

	Func alignment 
		return QAbstractSpinBox_alignment(pObject)

	Func buttonSymbols 
		return QAbstractSpinBox_buttonSymbols(pObject)

	Func correctionMode 
		return QAbstractSpinBox_correctionMode(pObject)

	Func hasAcceptableInput 
		return QAbstractSpinBox_hasAcceptableInput(pObject)

	Func hasFrame 
		return QAbstractSpinBox_hasFrame(pObject)

	Func interpretText 
		return QAbstractSpinBox_interpretText(pObject)

	Func isAccelerated 
		return QAbstractSpinBox_isAccelerated(pObject)

	Func isReadOnly 
		return QAbstractSpinBox_isReadOnly(pObject)

	Func keyboardTracking 
		return QAbstractSpinBox_keyboardTracking(pObject)

	Func setAccelerated P1
		return QAbstractSpinBox_setAccelerated(pObject,P1)

	Func setAlignment P1
		return QAbstractSpinBox_setAlignment(pObject,P1)

	Func setButtonSymbols P1
		return QAbstractSpinBox_setButtonSymbols(pObject,P1)

	Func setCorrectionMode P1
		return QAbstractSpinBox_setCorrectionMode(pObject,P1)

	Func setFrame P1
		return QAbstractSpinBox_setFrame(pObject,P1)

	Func setKeyboardTracking P1
		return QAbstractSpinBox_setKeyboardTracking(pObject,P1)

	Func setReadOnly P1
		return QAbstractSpinBox_setReadOnly(pObject,P1)

	Func setSpecialValueText P1
		return QAbstractSpinBox_setSpecialValueText(pObject,P1)

	Func setWrapping P1
		return QAbstractSpinBox_setWrapping(pObject,P1)

	Func specialValueText 
		return QAbstractSpinBox_specialValueText(pObject)

	Func stepBy P1
		return QAbstractSpinBox_stepBy(pObject,P1)

	Func text 
		return QAbstractSpinBox_text(pObject)

	Func wrapping 
		return QAbstractSpinBox_wrapping(pObject)

	Func clear 
		return QAbstractSpinBox_clear(pObject)

	Func selectAll 
		return QAbstractSpinBox_selectAll(pObject)

	Func stepDown 
		return QAbstractSpinBox_stepDown(pObject)

	Func stepUp 
		return QAbstractSpinBox_stepUp(pObject)

Class QDial from QAbstractSlider

	pObject

	Func init P1
		pObject = QDial_new(GetObjectPointerFromRingObject(P1))
		return self

	Func delete
		pObject = QDial_delete(pObject)

	Func ObjectPointer
		return pObject

	Func notchSize 
		return QDial_notchSize(pObject)

	Func notchTarget 
		return QDial_notchTarget(pObject)

	Func notchesVisible 
		return QDial_notchesVisible(pObject)

	Func setNotchTarget P1
		return QDial_setNotchTarget(pObject,P1)

	Func wrapping 
		return QDial_wrapping(pObject)

	Func minimumSizeHint 
		pTempObj = new QSize
		pTempObj.pObject = QDial_minimumSizeHint(pObject)
		return pTempObj

	Func sizeHint 
		pTempObj = new QSize
		pTempObj.pObject = QDial_sizeHint(pObject)
		return pTempObj

	Func setNotchesVisible P1
		return QDial_setNotchesVisible(pObject,P1)

	Func setWrapping P1
		return QDial_setWrapping(pObject,P1)

	Func setactionTriggeredEvent P1
		return QDial_setactionTriggeredEvent(pObject,P1)

	Func setrangeChangedEvent P1
		return QDial_setrangeChangedEvent(pObject,P1)

	Func setsliderMovedEvent P1
		return QDial_setsliderMovedEvent(pObject,P1)

	Func setsliderPressedEvent P1
		return QDial_setsliderPressedEvent(pObject,P1)

	Func setsliderReleasedEvent P1
		return QDial_setsliderReleasedEvent(pObject,P1)

	Func setvalueChangedEvent P1
		return QDial_setvalueChangedEvent(pObject,P1)

	Func getactionTriggeredEvent 
		return QDial_getactionTriggeredEvent(pObject)

	Func getrangeChangedEvent 
		return QDial_getrangeChangedEvent(pObject)

	Func getsliderMovedEvent 
		return QDial_getsliderMovedEvent(pObject)

	Func getsliderPressedEvent 
		return QDial_getsliderPressedEvent(pObject)

	Func getsliderReleasedEvent 
		return QDial_getsliderReleasedEvent(pObject)

	Func getvalueChangedEvent 
		return QDial_getvalueChangedEvent(pObject)

Class QCheckBox from QAbstractButton

	pObject

	Func init P1
		pObject = QCheckBox_new(GetObjectPointerFromRingObject(P1))
		return self

	Func delete
		pObject = QCheckBox_delete(pObject)

	Func ObjectPointer
		return pObject

	Func checkState 
		return QCheckBox_checkState(pObject)

	Func isTristate 
		return QCheckBox_isTristate(pObject)

	Func setCheckState P1
		return QCheckBox_setCheckState(pObject,P1)

	Func setTristate P1
		return QCheckBox_setTristate(pObject,P1)

	Func minimumSizeHint 
		pTempObj = new QSize
		pTempObj.pObject = QCheckBox_minimumSizeHint(pObject)
		return pTempObj

	Func sizeHint 
		pTempObj = new QSize
		pTempObj.pObject = QCheckBox_sizeHint(pObject)
		return pTempObj

	Func setstateChangedEvent P1
		return QCheckBox_setstateChangedEvent(pObject,P1)

	Func setclickedEvent P1
		return QCheckBox_setclickedEvent(pObject,P1)

	Func setpressedEvent P1
		return QCheckBox_setpressedEvent(pObject,P1)

	Func setreleasedEvent P1
		return QCheckBox_setreleasedEvent(pObject,P1)

	Func settoggledEvent P1
		return QCheckBox_settoggledEvent(pObject,P1)

	Func getstateChangedEvent 
		return QCheckBox_getstateChangedEvent(pObject)

	Func getclickedEvent 
		return QCheckBox_getclickedEvent(pObject)

	Func getpressedEvent 
		return QCheckBox_getpressedEvent(pObject)

	Func getreleasedEvent 
		return QCheckBox_getreleasedEvent(pObject)

	Func gettoggledEvent 
		return QCheckBox_gettoggledEvent(pObject)

Class QAbstractButton from QWidget

	pObject

	Func init P1
		pObject = QAbstractButton_new(GetObjectPointerFromRingObject(P1))
		return self

	Func delete
		pObject = QAbstractButton_delete(pObject)

	Func ObjectPointer
		return pObject

	Func autoExclusive 
		return QAbstractButton_autoExclusive(pObject)

	Func autoRepeat 
		return QAbstractButton_autoRepeat(pObject)

	Func autoRepeatDelay 
		return QAbstractButton_autoRepeatDelay(pObject)

	Func autoRepeatInterval 
		return QAbstractButton_autoRepeatInterval(pObject)

	Func group 
		pTempObj = new QButtonGroup
		pTempObj.pObject = QAbstractButton_group(pObject)
		return pTempObj

	Func icon 
		pTempObj = new QIcon
		pTempObj.pObject = QAbstractButton_icon(pObject)
		return pTempObj

	Func iconSize 
		pTempObj = new QSize
		pTempObj.pObject = QAbstractButton_iconSize(pObject)
		return pTempObj

	Func isCheckable 
		return QAbstractButton_isCheckable(pObject)

	Func isChecked 
		return QAbstractButton_isChecked(pObject)

	Func isDown 
		return QAbstractButton_isDown(pObject)

	Func setAutoExclusive P1
		return QAbstractButton_setAutoExclusive(pObject,P1)

	Func setAutoRepeat P1
		return QAbstractButton_setAutoRepeat(pObject,P1)

	Func setAutoRepeatDelay P1
		return QAbstractButton_setAutoRepeatDelay(pObject,P1)

	Func setAutoRepeatInterval P1
		return QAbstractButton_setAutoRepeatInterval(pObject,P1)

	Func setCheckable P1
		return QAbstractButton_setCheckable(pObject,P1)

	Func setDown P1
		return QAbstractButton_setDown(pObject,P1)

	Func setIcon P1
		return QAbstractButton_setIcon(pObject,GetObjectPointerFromRingObject(P1))

	Func setShortcut P1
		return QAbstractButton_setShortcut(pObject,GetObjectPointerFromRingObject(P1))

	Func setText P1
		return QAbstractButton_setText(pObject,P1)

	Func shortcut 
		pTempObj = new QKeySequence
		pTempObj.pObject = QAbstractButton_shortcut(pObject)
		return pTempObj

	Func text 
		return QAbstractButton_text(pObject)

	Func animateClick P1
		return QAbstractButton_animateClick(pObject,P1)

	Func click 
		return QAbstractButton_click(pObject)

	Func setChecked P1
		return QAbstractButton_setChecked(pObject,P1)

	Func setIconSize P1
		return QAbstractButton_setIconSize(pObject,GetObjectPointerFromRingObject(P1))

	Func toggle 
		return QAbstractButton_toggle(pObject)

Class QRadioButton from QAbstractButton

	pObject

	Func init P1
		pObject = QRadioButton_new(GetObjectPointerFromRingObject(P1))
		return self

	Func delete
		pObject = QRadioButton_delete(pObject)

	Func ObjectPointer
		return pObject

	Func minimumSizeHint 
		pTempObj = new QSize
		pTempObj.pObject = QRadioButton_minimumSizeHint(pObject)
		return pTempObj

	Func sizeHint 
		pTempObj = new QSize
		pTempObj.pObject = QRadioButton_sizeHint(pObject)
		return pTempObj

	Func setclickedEvent P1
		return QRadioButton_setclickedEvent(pObject,P1)

	Func setpressedEvent P1
		return QRadioButton_setpressedEvent(pObject,P1)

	Func setreleasedEvent P1
		return QRadioButton_setreleasedEvent(pObject,P1)

	Func settoggledEvent P1
		return QRadioButton_settoggledEvent(pObject,P1)

	Func getclickedEvent 
		return QRadioButton_getclickedEvent(pObject)

	Func getpressedEvent 
		return QRadioButton_getpressedEvent(pObject)

	Func getreleasedEvent 
		return QRadioButton_getreleasedEvent(pObject)

	Func gettoggledEvent 
		return QRadioButton_gettoggledEvent(pObject)

Class QButtonGroup

	pObject

	Func init P1
		pObject = QButtonGroup_new(GetObjectPointerFromRingObject(P1))
		return self

	Func delete
		pObject = QButtonGroup_delete(pObject)

	Func ObjectPointer
		return pObject

	Func addButton P1,P2
		return QButtonGroup_addButton(pObject,GetObjectPointerFromRingObject(P1),P2)

	Func button P1
		pTempObj = new QAbstractButton
		pTempObj.pObject = QButtonGroup_button(pObject,P1)
		return pTempObj

	Func checkedButton 
		pTempObj = new QAbstractButton
		pTempObj.pObject = QButtonGroup_checkedButton(pObject)
		return pTempObj

	Func checkedId 
		return QButtonGroup_checkedId(pObject)

	Func exclusive 
		return QButtonGroup_exclusive(pObject)

	Func id P1
		return QButtonGroup_id(pObject,GetObjectPointerFromRingObject(P1))

	Func removeButton P1
		return QButtonGroup_removeButton(pObject,GetObjectPointerFromRingObject(P1))

	Func setExclusive P1
		return QButtonGroup_setExclusive(pObject,P1)

	Func setId P1,P2
		return QButtonGroup_setId(pObject,GetObjectPointerFromRingObject(P1),P2)

	Func setbuttonClickedEvent P1
		return QButtonGroup_setbuttonClickedEvent(pObject,P1)

	Func setbuttonPressedEvent P1
		return QButtonGroup_setbuttonPressedEvent(pObject,P1)

	Func setbuttonReleasedEvent P1
		return QButtonGroup_setbuttonReleasedEvent(pObject,P1)

	Func getbuttonClickedEvent 
		return QButtonGroup_getbuttonClickedEvent(pObject)

	Func getbuttonPressedEvent 
		return QButtonGroup_getbuttonPressedEvent(pObject)

	Func getbuttonReleasedEvent 
		return QButtonGroup_getbuttonReleasedEvent(pObject)

Class QAction

	pObject

	Func init P1
		pObject = QAction_new(GetObjectPointerFromRingObject(P1))
		return self

	Func delete
		pObject = QAction_delete(pObject)

	Func ObjectPointer
		return pObject

	Func actionGroup 
		return QAction_actionGroup(pObject)

	Func activate P1
		return QAction_activate(pObject,P1)

	Func autoRepeat 
		return QAction_autoRepeat(pObject)

	Func data 
		pTempObj = new QVariant
		pTempObj.pObject = QAction_data(pObject)
		return pTempObj

	Func font 
		pTempObj = new QFont
		pTempObj.pObject = QAction_font(pObject)
		return pTempObj

	Func icon 
		pTempObj = new QIcon
		pTempObj.pObject = QAction_icon(pObject)
		return pTempObj

	Func iconText 
		return QAction_iconText(pObject)

	Func isCheckable 
		return QAction_isCheckable(pObject)

	Func isChecked 
		return QAction_isChecked(pObject)

	Func isEnabled 
		return QAction_isEnabled(pObject)

	Func isIconVisibleInMenu 
		return QAction_isIconVisibleInMenu(pObject)

	Func isSeparator 
		return QAction_isSeparator(pObject)

	Func isVisible 
		return QAction_isVisible(pObject)

	Func menu 
		pTempObj = new QMenu
		pTempObj.pObject = QAction_menu(pObject)
		return pTempObj

	Func menuRole 
		return QAction_menuRole(pObject)

	Func parentWidget 
		pTempObj = new QWidget
		pTempObj.pObject = QAction_parentWidget(pObject)
		return pTempObj

	Func priority 
		return QAction_priority(pObject)

	Func setActionGroup P1
		return QAction_setActionGroup(pObject,GetObjectPointerFromRingObject(P1))

	Func setAutoRepeat P1
		return QAction_setAutoRepeat(pObject,P1)

	Func setCheckable P1
		return QAction_setCheckable(pObject,P1)

	Func setData P1
		return QAction_setData(pObject,GetObjectPointerFromRingObject(P1))

	Func setFont P1
		return QAction_setFont(pObject,GetObjectPointerFromRingObject(P1))

	Func setIcon P1
		return QAction_setIcon(pObject,GetObjectPointerFromRingObject(P1))

	Func setIconText P1
		return QAction_setIconText(pObject,P1)

	Func setIconVisibleInMenu P1
		return QAction_setIconVisibleInMenu(pObject,P1)

	Func setMenu P1
		return QAction_setMenu(pObject,GetObjectPointerFromRingObject(P1))

	Func setMenuRole P1
		return QAction_setMenuRole(pObject,P1)

	Func setPriority P1
		return QAction_setPriority(pObject,P1)

	Func setSeparator P1
		return QAction_setSeparator(pObject,P1)

	Func setShortcut P1
		return QAction_setShortcut(pObject,GetObjectPointerFromRingObject(P1))

	Func setShortcutContext P1
		return QAction_setShortcutContext(pObject,P1)

	Func setShortcuts P1
		return QAction_setShortcuts(pObject,P1)

	Func setStatusTip P1
		return QAction_setStatusTip(pObject,P1)

	Func setText P1
		return QAction_setText(pObject,P1)

	Func setToolTip P1
		return QAction_setToolTip(pObject,P1)

	Func setWhatsThis P1
		return QAction_setWhatsThis(pObject,P1)

	Func shortcut 
		pTempObj = new QKeySequence
		pTempObj.pObject = QAction_shortcut(pObject)
		return pTempObj

	Func shortcutContext 
		return QAction_shortcutContext(pObject)

	Func showStatusText P1
		return QAction_showStatusText(pObject,GetObjectPointerFromRingObject(P1))

	Func statusTip 
		return QAction_statusTip(pObject)

	Func text 
		return QAction_text(pObject)

	Func toolTip 
		return QAction_toolTip(pObject)

	Func whatsThis 
		return QAction_whatsThis(pObject)

	Func hover 
		return QAction_hover(pObject)

	Func setChecked P1
		return QAction_setChecked(pObject,P1)

	Func setDisabled P1
		return QAction_setDisabled(pObject,P1)

	Func setEnabled P1
		return QAction_setEnabled(pObject,P1)

	Func setVisible P1
		return QAction_setVisible(pObject,P1)

	Func toggle 
		return QAction_toggle(pObject)

	Func trigger 
		return QAction_trigger(pObject)

	Func setClickEvent P1
		return QAction_setClickEvent(pObject,P1)

	Func getClickEvent 
		return QAction_getClickEvent(pObject)

Class QMessageBox from QDialog

	pObject

	Func init P1
		pObject = QMessageBox_new(GetObjectPointerFromRingObject(P1))
		return self

	Func delete
		pObject = QMessageBox_delete(pObject)

	Func ObjectPointer
		return pObject

	Func addButton P1,P2
		return QMessageBox_addButton(pObject,GetObjectPointerFromRingObject(P1),P2)

	Func button P1
		pTempObj = new QAbstractButton
		pTempObj.pObject = QMessageBox_button(pObject,P1)
		return pTempObj

	Func buttonRole P1
		return QMessageBox_buttonRole(pObject,GetObjectPointerFromRingObject(P1))

	Func clickedButton 
		pTempObj = new QAbstractButton
		pTempObj.pObject = QMessageBox_clickedButton(pObject)
		return pTempObj

	Func defaultButton 
		pTempObj = new QPushButton
		pTempObj.pObject = QMessageBox_defaultButton(pObject)
		return pTempObj

	Func detailedText 
		return QMessageBox_detailedText(pObject)

	Func escapeButton 
		pTempObj = new QAbstractButton
		pTempObj.pObject = QMessageBox_escapeButton(pObject)
		return pTempObj

	Func iconPixmap 
		pTempObj = new QPixmap
		pTempObj.pObject = QMessageBox_iconPixmap(pObject)
		return pTempObj

	Func informativeText 
		return QMessageBox_informativeText(pObject)

	Func open P1,P2
		return QMessageBox_open(pObject,GetObjectPointerFromRingObject(P1),P2)

	Func removeButton P1
		return QMessageBox_removeButton(pObject,GetObjectPointerFromRingObject(P1))

	Func setDefaultButton P1
		return QMessageBox_setDefaultButton(pObject,GetObjectPointerFromRingObject(P1))

	Func setDetailedText P1
		return QMessageBox_setDetailedText(pObject,P1)

	Func setEscapeButton P1
		return QMessageBox_setEscapeButton(pObject,GetObjectPointerFromRingObject(P1))

	Func setIcon P1
		return QMessageBox_setIcon(pObject,P1)

	Func setIconPixmap P1
		return QMessageBox_setIconPixmap(pObject,GetObjectPointerFromRingObject(P1))

	Func setInformativeText P1
		return QMessageBox_setInformativeText(pObject,P1)

	Func setStandardButtons P1
		return QMessageBox_setStandardButtons(pObject,P1)

	Func setText P1
		return QMessageBox_setText(pObject,P1)

	Func setTextFormat P1
		return QMessageBox_setTextFormat(pObject,P1)

	Func setWindowModality P1
		return QMessageBox_setWindowModality(pObject,P1)

	Func setWindowTitle P1
		return QMessageBox_setWindowTitle(pObject,P1)

	Func standardButton P1
		return QMessageBox_standardButton(pObject,GetObjectPointerFromRingObject(P1))

	Func standardButtons 
		return QMessageBox_standardButtons(pObject)

	Func text 
		return QMessageBox_text(pObject)

	Func textFormat 
		return QMessageBox_textFormat(pObject)

	Func exec 
		return QMessageBox_exec(pObject)

	Func about P1,P2,P3
		return QMessageBox_about(pObject,GetObjectPointerFromRingObject(P1),P2,P3)

	Func aboutQt P1,P2
		return QMessageBox_aboutQt(pObject,GetObjectPointerFromRingObject(P1),P2)

	Func critical P1,P2,P3,P4,P5
		return QMessageBox_critical(pObject,GetObjectPointerFromRingObject(P1),P2,P3,P4,P5)

	Func information P1,P2,P3,P4,P5
		return QMessageBox_information(pObject,GetObjectPointerFromRingObject(P1),P2,P3,P4,P5)

	Func question P1,P2,P3,P4,P5
		return QMessageBox_question(pObject,GetObjectPointerFromRingObject(P1),P2,P3,P4,P5)

	Func warning P1,P2,P3,P4,P5
		return QMessageBox_warning(pObject,GetObjectPointerFromRingObject(P1),P2,P3,P4,P5)

Class QFileDialog from QDialog

	pObject

	Func init P1
		pObject = QFileDialog_new(GetObjectPointerFromRingObject(P1))
		return self

	Func delete
		pObject = QFileDialog_delete(pObject)

	Func ObjectPointer
		return pObject

	Func acceptMode 
		return QFileDialog_acceptMode(pObject)

	Func defaultSuffix 
		return QFileDialog_defaultSuffix(pObject)

	Func directory 
		pTempObj = new QDir
		pTempObj.pObject = QFileDialog_directory(pObject)
		return pTempObj

	Func directoryUrl 
		pTempObj = new QUrl
		pTempObj.pObject = QFileDialog_directoryUrl(pObject)
		return pTempObj

	Func fileMode 
		return QFileDialog_fileMode(pObject)

	Func filter 
		return QFileDialog_filter(pObject)

	Func history 
		pTempObj = new QStringList
		pTempObj.pObject = QFileDialog_history(pObject)
		return pTempObj

	Func iconProvider 
		return QFileDialog_iconProvider(pObject)

	Func itemDelegate 
		return QFileDialog_itemDelegate(pObject)

	Func labelText P1
		return QFileDialog_labelText(pObject,P1)

	Func mimeTypeFilters 
		pTempObj = new QStringList
		pTempObj.pObject = QFileDialog_mimeTypeFilters(pObject)
		return pTempObj

	Func nameFilters 
		pTempObj = new QStringList
		pTempObj.pObject = QFileDialog_nameFilters(pObject)
		return pTempObj

	Func open P1,P2
		return QFileDialog_open(pObject,GetObjectPointerFromRingObject(P1),P2)

	Func options 
		return QFileDialog_options(pObject)

	Func proxyModel 
		return QFileDialog_proxyModel(pObject)

	Func restoreState P1
		return QFileDialog_restoreState(pObject,GetObjectPointerFromRingObject(P1))

	Func saveState 
		pTempObj = new QByteArray
		pTempObj.pObject = QFileDialog_saveState(pObject)
		return pTempObj

	Func selectFile P1
		return QFileDialog_selectFile(pObject,P1)

	Func selectMimeTypeFilter P1
		return QFileDialog_selectMimeTypeFilter(pObject,P1)

	Func selectNameFilter P1
		return QFileDialog_selectNameFilter(pObject,P1)

	Func selectUrl P1
		return QFileDialog_selectUrl(pObject,GetObjectPointerFromRingObject(P1))

	Func selectedFiles 
		pTempObj = new QStringList
		pTempObj.pObject = QFileDialog_selectedFiles(pObject)
		return pTempObj

	Func selectedNameFilter 
		return QFileDialog_selectedNameFilter(pObject)

	Func selectedUrls 
		return QFileDialog_selectedUrls(pObject)

	Func setAcceptMode P1
		return QFileDialog_setAcceptMode(pObject,P1)

	Func setDefaultSuffix P1
		return QFileDialog_setDefaultSuffix(pObject,P1)

	Func setDirectory P1
		return QFileDialog_setDirectory(pObject,P1)

	Func setDirectory_2 P1
		return QFileDialog_setDirectory_2(pObject,GetObjectPointerFromRingObject(P1))

	Func setDirectoryUrl P1
		return QFileDialog_setDirectoryUrl(pObject,GetObjectPointerFromRingObject(P1))

	Func setFileMode P1
		return QFileDialog_setFileMode(pObject,P1)

	Func setFilter P1
		return QFileDialog_setFilter(pObject,P1)

	Func setHistory P1
		return QFileDialog_setHistory(pObject,GetObjectPointerFromRingObject(P1))

	Func setIconProvider P1
		return QFileDialog_setIconProvider(pObject,GetObjectPointerFromRingObject(P1))

	Func setItemDelegate P1
		return QFileDialog_setItemDelegate(pObject,GetObjectPointerFromRingObject(P1))

	Func setLabelText P1,P2
		return QFileDialog_setLabelText(pObject,P1,P2)

	Func setMimeTypeFilters P1
		return QFileDialog_setMimeTypeFilters(pObject,GetObjectPointerFromRingObject(P1))

	Func setNameFilter P1
		return QFileDialog_setNameFilter(pObject,P1)

	Func setNameFilters P1
		return QFileDialog_setNameFilters(pObject,GetObjectPointerFromRingObject(P1))

	Func setOption P1,P2
		return QFileDialog_setOption(pObject,P1,P2)

	Func setOptions P1
		return QFileDialog_setOptions(pObject,P1)

	Func setProxyModel P1
		return QFileDialog_setProxyModel(pObject,GetObjectPointerFromRingObject(P1))

	Func setSidebarUrls P1
		return QFileDialog_setSidebarUrls(pObject,GetObjectPointerFromRingObject(P1))

	Func setViewMode P1
		return QFileDialog_setViewMode(pObject,P1)

	Func sidebarUrls 
		return QFileDialog_sidebarUrls(pObject)

	Func testOption P1
		return QFileDialog_testOption(pObject,P1)

	Func viewMode 
		return QFileDialog_viewMode(pObject)

	Func getExistingDirectory P1,P2,P3,P4
		return QFileDialog_getExistingDirectory(pObject,GetObjectPointerFromRingObject(P1),P2,P3,P4)

	Func getExistingDirectoryUrl P1,P2,P3,P4,P5
		pTempObj = new QUrl
		pTempObj.pObject = QFileDialog_getExistingDirectoryUrl(pObject,GetObjectPointerFromRingObject(P1),P2,GetObjectPointerFromRingObject(P3),P4,GetObjectPointerFromRingObject(P5))
		return pTempObj

	Func getOpenFileName P1,P2,P3,P4
		return QFileDialog_getOpenFileName(pObject,GetObjectPointerFromRingObject(P1),P2,P3,P4)

	Func getOpenFileName_2 P1,P2,P3,P4,P5,P6
		return QFileDialog_getOpenFileName_2(pObject,GetObjectPointerFromRingObject(P1),P2,P3,P4,GetObjectPointerFromRingObject(P5),P6)

	Func getOpenFileNames P1,P2,P3,P4,P5,P6
		pTempObj = new QStringList
		pTempObj.pObject = QFileDialog_getOpenFileNames(pObject,GetObjectPointerFromRingObject(P1),P2,P3,P4,GetObjectPointerFromRingObject(P5),P6)
		return pTempObj

	Func getOpenFileUrl P1,P2,P3,P4,P5,P6,P7
		pTempObj = new QUrl
		pTempObj.pObject = QFileDialog_getOpenFileUrl(pObject,GetObjectPointerFromRingObject(P1),P2,GetObjectPointerFromRingObject(P3),P4,GetObjectPointerFromRingObject(P5),P6,GetObjectPointerFromRingObject(P7))
		return pTempObj

	Func getOpenFileUrls P1,P2,P3,P4,P5,P6,P7
		return QFileDialog_getOpenFileUrls(pObject,GetObjectPointerFromRingObject(P1),P2,GetObjectPointerFromRingObject(P3),P4,GetObjectPointerFromRingObject(P5),P6,GetObjectPointerFromRingObject(P7))

	Func getSaveFileName P1,P2,P3,P4
		return QFileDialog_getSaveFileName(pObject,GetObjectPointerFromRingObject(P1),P2,P3,P4)

	Func getSaveFileName_2 P1,P2,P3,P4,P5,P6
		return QFileDialog_getSaveFileName_2(pObject,GetObjectPointerFromRingObject(P1),P2,P3,P4,GetObjectPointerFromRingObject(P5),P6)

	Func getSaveFileUrl P1,P2,P3,P4,P5,P6,P7
		pTempObj = new QUrl
		pTempObj.pObject = QFileDialog_getSaveFileUrl(pObject,GetObjectPointerFromRingObject(P1),P2,GetObjectPointerFromRingObject(P3),P4,GetObjectPointerFromRingObject(P5),P6,GetObjectPointerFromRingObject(P7))
		return pTempObj

	Func setcurrentChangedEvent P1
		return QFileDialog_setcurrentChangedEvent(pObject,P1)

	Func setcurrentUrlChangedEvent P1
		return QFileDialog_setcurrentUrlChangedEvent(pObject,P1)

	Func setdirectoryEnteredEvent P1
		return QFileDialog_setdirectoryEnteredEvent(pObject,P1)

	Func setdirectoryUrlEnteredEvent P1
		return QFileDialog_setdirectoryUrlEnteredEvent(pObject,P1)

	Func setfileSelectedEvent P1
		return QFileDialog_setfileSelectedEvent(pObject,P1)

	Func setfilesSelectedEvent P1
		return QFileDialog_setfilesSelectedEvent(pObject,P1)

	Func setfilterSelectedEvent P1
		return QFileDialog_setfilterSelectedEvent(pObject,P1)

	Func seturlSelectedEvent P1
		return QFileDialog_seturlSelectedEvent(pObject,P1)

	Func seturlsSelectedEvent P1
		return QFileDialog_seturlsSelectedEvent(pObject,P1)

	Func getcurrentChangedEvent 
		return QFileDialog_getcurrentChangedEvent(pObject)

	Func getcurrentUrlChangedEvent 
		return QFileDialog_getcurrentUrlChangedEvent(pObject)

	Func getdirectoryEnteredEvent 
		return QFileDialog_getdirectoryEnteredEvent(pObject)

	Func getdirectoryUrlEnteredEvent 
		return QFileDialog_getdirectoryUrlEnteredEvent(pObject)

	Func getfileSelectedEvent 
		return QFileDialog_getfileSelectedEvent(pObject)

	Func getfilesSelectedEvent 
		return QFileDialog_getfilesSelectedEvent(pObject)

	Func getfilterSelectedEvent 
		return QFileDialog_getfilterSelectedEvent(pObject)

	Func geturlSelectedEvent 
		return QFileDialog_geturlSelectedEvent(pObject)

	Func geturlsSelectedEvent 
		return QFileDialog_geturlsSelectedEvent(pObject)

Class QFontDialog from QDialog

	pObject

	Func init 
		pObject = QFontDialog_new()
		return self

	Func delete
		pObject = QFontDialog_delete(pObject)

	Func ObjectPointer
		return pObject

	Func currentFont 
		pTempObj = new QFont
		pTempObj.pObject = QFontDialog_currentFont(pObject)
		return pTempObj

	Func open P1,P2
		return QFontDialog_open(pObject,GetObjectPointerFromRingObject(P1),P2)

	Func options 
		return QFontDialog_options(pObject)

	Func selectedFont 
		pTempObj = new QFont
		pTempObj.pObject = QFontDialog_selectedFont(pObject)
		return pTempObj

	Func setCurrentFont P1
		return QFontDialog_setCurrentFont(pObject,GetObjectPointerFromRingObject(P1))

	Func setOption P1,P2
		return QFontDialog_setOption(pObject,P1,P2)

	Func setOptions P1
		return QFontDialog_setOptions(pObject,P1)

	Func testOption P1
		return QFontDialog_testOption(pObject,P1)

	Func getFont_2 P1,P2,P3,P4,P5
		pTempObj = new QFont
		pTempObj.pObject = QFontDialog_getFont_2(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2),GetObjectPointerFromRingObject(P3),P4,P5)
		return pTempObj

	Func getFont_3 P1,P2
		pTempObj = new QFont
		pTempObj.pObject = QFontDialog_getFont_3(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2))
		return pTempObj

	Func setcurrentFontChangedEvent P1
		return QFontDialog_setcurrentFontChangedEvent(pObject,P1)

	Func setfontSelectedEvent P1
		return QFontDialog_setfontSelectedEvent(pObject,P1)

	Func getcurrentFontChangedEvent 
		return QFontDialog_getcurrentFontChangedEvent(pObject)

	Func getfontSelectedEvent 
		return QFontDialog_getfontSelectedEvent(pObject)

	Func getfont 
		return QFontDialog_getfont(pObject)

Class QDialog from QWidget

	pObject

	Func init P1
		pObject = QDialog_new(GetObjectPointerFromRingObject(P1))
		return self

	Func delete
		pObject = QDialog_delete(pObject)

	Func ObjectPointer
		return pObject

	Func isSizeGripEnabled 
		return QDialog_isSizeGripEnabled(pObject)

	Func result 
		return QDialog_result(pObject)

	Func setModal P1
		return QDialog_setModal(pObject,P1)

	Func setResult P1
		return QDialog_setResult(pObject,P1)

	Func setSizeGripEnabled P1
		return QDialog_setSizeGripEnabled(pObject,P1)

	Func accept 
		return QDialog_accept(pObject)

	Func donedialog P1
		return QDialog_done(pObject,P1)

	Func exec 
		return QDialog_exec(pObject)

	Func open 
		return QDialog_open(pObject)

	Func reject 
		return QDialog_reject(pObject)

Class QColorDialog from QDialog

	pObject

	Func init 
		pObject = QColorDialog_new()
		return self

	Func delete
		pObject = QColorDialog_delete(pObject)

	Func ObjectPointer
		return pObject

	Func currentColor 
		pTempObj = new QColor
		pTempObj.pObject = QColorDialog_currentColor(pObject)
		return pTempObj

	Func open P1,P2
		return QColorDialog_open(pObject,GetObjectPointerFromRingObject(P1),P2)

	Func options 
		return QColorDialog_options(pObject)

	Func selectedColor 
		pTempObj = new QColor
		pTempObj.pObject = QColorDialog_selectedColor(pObject)
		return pTempObj

	Func setCurrentColor P1
		return QColorDialog_setCurrentColor(pObject,GetObjectPointerFromRingObject(P1))

	Func setOption P1,P2
		return QColorDialog_setOption(pObject,P1,P2)

	Func setOptions P1
		return QColorDialog_setOptions(pObject,P1)

	Func testOption P1
		return QColorDialog_testOption(pObject,P1)

	Func customColor P1
		pTempObj = new QColor
		pTempObj.pObject = QColorDialog_customColor(pObject,P1)
		return pTempObj

	Func customCount 
		return QColorDialog_customCount(pObject)

	Func getColor_2 P1,P2,P3,P4
		pTempObj = new QColor
		pTempObj.pObject = QColorDialog_getColor_2(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2),P3,P4)
		return pTempObj

	Func setCustomColor P1,P2
		return QColorDialog_setCustomColor(pObject,P1,GetObjectPointerFromRingObject(P2))

	Func setStandardColor P1,P2
		return QColorDialog_setStandardColor(pObject,P1,GetObjectPointerFromRingObject(P2))

	Func standardColor P1
		pTempObj = new QColor
		pTempObj.pObject = QColorDialog_standardColor(pObject,P1)
		return pTempObj

	Func setcolorSelectedEvent P1
		return QColorDialog_setcolorSelectedEvent(pObject,P1)

	Func setcurrentColorChangedEvent P1
		return QColorDialog_setcurrentColorChangedEvent(pObject,P1)

	Func getcolorSelectedEvent 
		return QColorDialog_getcolorSelectedEvent(pObject)

	Func getcurrentColorChangedEvent 
		return QColorDialog_getcurrentColorChangedEvent(pObject)

	Func getcolor 
		return QColorDialog_getcolor(pObject)

Class QLCDNumber from QFrame

	pObject

	Func init P1
		pObject = QLCDNumber_new(GetObjectPointerFromRingObject(P1))
		return self

	Func delete
		pObject = QLCDNumber_delete(pObject)

	Func ObjectPointer
		return pObject

	Func checkOverflow P1
		return QLCDNumber_checkOverflow(pObject,P1)

	Func digitCount 
		return QLCDNumber_digitCount(pObject)

	Func intValue 
		return QLCDNumber_intValue(pObject)

	Func mode 
		return QLCDNumber_mode(pObject)

	Func segmentStyle 
		return QLCDNumber_segmentStyle(pObject)

	Func setDigitCount P1
		return QLCDNumber_setDigitCount(pObject,P1)

	Func setMode P1
		return QLCDNumber_setMode(pObject,P1)

	Func setSegmentStyle P1
		return QLCDNumber_setSegmentStyle(pObject,P1)

	Func smallDecimalPoint 
		return QLCDNumber_smallDecimalPoint(pObject)

	Func value 
		return QLCDNumber_value(pObject)

	Func display P1
		return QLCDNumber_display(pObject,P1)

	Func setBinMode 
		return QLCDNumber_setBinMode(pObject)

	Func setDecMode 
		return QLCDNumber_setDecMode(pObject)

	Func setHexMode 
		return QLCDNumber_setHexMode(pObject)

	Func setOctMode 
		return QLCDNumber_setOctMode(pObject)

	Func setSmallDecimalPoint P1
		return QLCDNumber_setSmallDecimalPoint(pObject,P1)

Class QInputDialog from QDialog

	pObject

	Func init P1
		pObject = QInputDialog_new(GetObjectPointerFromRingObject(P1))
		return self

	Func delete
		pObject = QInputDialog_delete(pObject)

	Func ObjectPointer
		return pObject

	Func cancelButtonText 
		return QInputDialog_cancelButtonText(pObject)

	Func comboBoxItems 
		pTempObj = new QStringList
		pTempObj.pObject = QInputDialog_comboBoxItems(pObject)
		return pTempObj

	Func doubleDecimals 
		return QInputDialog_doubleDecimals(pObject)

	Func doubleMaximum 
		return QInputDialog_doubleMaximum(pObject)

	Func doubleMinimum 
		return QInputDialog_doubleMinimum(pObject)

	Func doubleValue 
		return QInputDialog_doubleValue(pObject)

	Func inputMode 
		return QInputDialog_inputMode(pObject)

	Func intMaximum 
		return QInputDialog_intMaximum(pObject)

	Func intMinimum 
		return QInputDialog_intMinimum(pObject)

	Func intStep 
		return QInputDialog_intStep(pObject)

	Func intValue 
		return QInputDialog_intValue(pObject)

	Func isComboBoxEditable 
		return QInputDialog_isComboBoxEditable(pObject)

	Func labelText 
		return QInputDialog_labelText(pObject)

	Func okButtonText 
		return QInputDialog_okButtonText(pObject)

	Func open P1,P2
		return QInputDialog_open(pObject,GetObjectPointerFromRingObject(P1),P2)

	Func options 
		return QInputDialog_options(pObject)

	Func setCancelButtonText P1
		return QInputDialog_setCancelButtonText(pObject,P1)

	Func setComboBoxEditable P1
		return QInputDialog_setComboBoxEditable(pObject,P1)

	Func setComboBoxItems P1
		return QInputDialog_setComboBoxItems(pObject,GetObjectPointerFromRingObject(P1))

	Func setDoubleDecimals P1
		return QInputDialog_setDoubleDecimals(pObject,P1)

	Func setDoubleMaximum P1
		return QInputDialog_setDoubleMaximum(pObject,P1)

	Func setDoubleMinimum P1
		return QInputDialog_setDoubleMinimum(pObject,P1)

	Func setDoubleRange P1,P2
		return QInputDialog_setDoubleRange(pObject,P1,P2)

	Func setDoubleValue P1
		return QInputDialog_setDoubleValue(pObject,P1)

	Func setInputMode P1
		return QInputDialog_setInputMode(pObject,P1)

	Func setIntMaximum P1
		return QInputDialog_setIntMaximum(pObject,P1)

	Func setIntMinimum P1
		return QInputDialog_setIntMinimum(pObject,P1)

	Func setIntRange P1,P2
		return QInputDialog_setIntRange(pObject,P1,P2)

	Func setIntStep P1
		return QInputDialog_setIntStep(pObject,P1)

	Func setIntValue P1
		return QInputDialog_setIntValue(pObject,P1)

	Func setLabelText P1
		return QInputDialog_setLabelText(pObject,P1)

	Func setOkButtonText P1
		return QInputDialog_setOkButtonText(pObject,P1)

	Func setOption P1,P2
		return QInputDialog_setOption(pObject,P1,P2)

	Func setOptions P1
		return QInputDialog_setOptions(pObject,P1)

	Func setTextEchoMode P1
		return QInputDialog_setTextEchoMode(pObject,P1)

	Func setTextValue P1
		return QInputDialog_setTextValue(pObject,P1)

	Func testOption P1
		return QInputDialog_testOption(pObject,P1)

	Func textEchoMode 
		return QInputDialog_textEchoMode(pObject)

	Func textValue 
		return QInputDialog_textValue(pObject)

	Func getDouble P1,P2,P3,P4,P5,P6,P7,P8,P9
		return QInputDialog_getDouble(pObject,GetObjectPointerFromRingObject(P1),P2,P3,P4,P5,P6,P7,GetObjectPointerFromRingObject(P8),P9)

	Func getInt P1,P2,P3,P4,P5,P6,P7,P8,P9
		return QInputDialog_getInt(pObject,GetObjectPointerFromRingObject(P1),P2,P3,P4,P5,P6,P7,GetObjectPointerFromRingObject(P8),P9)

Class QAllEvents from QWidget

	pObject

	Func init P1
		pObject = QAllEvents_new(GetObjectPointerFromRingObject(P1))
		return self

	Func delete
		pObject = QAllEvents_delete(pObject)

	Func ObjectPointer
		return pObject

	Func accept 
		return QAllEvents_accept(pObject)

	Func ignore 
		return QAllEvents_ignore(pObject)

	Func getKeyCode 
		return QAllEvents_getKeyCode(pObject)

	Func getKeyText 
		return QAllEvents_getKeyText(pObject)

	Func getModifiers 
		return QAllEvents_getModifiers(pObject)

	Func getx 
		return QAllEvents_getx(pObject)

	Func gety 
		return QAllEvents_gety(pObject)

	Func getglobalx 
		return QAllEvents_getglobalx(pObject)

	Func getglobaly 
		return QAllEvents_getglobaly(pObject)

	Func getbutton 
		return QAllEvents_getbutton(pObject)

	Func getbuttons 
		return QAllEvents_getbuttons(pObject)

	Func setKeyPressEvent P1
		return QAllEvents_setKeyPressEvent(pObject,P1)

	Func setMouseButtonPressEvent P1
		return QAllEvents_setMouseButtonPressEvent(pObject,P1)

	Func setMouseButtonReleaseEvent P1
		return QAllEvents_setMouseButtonReleaseEvent(pObject,P1)

	Func setMouseButtonDblClickEvent P1
		return QAllEvents_setMouseButtonDblClickEvent(pObject,P1)

	Func setMouseMoveEvent P1
		return QAllEvents_setMouseMoveEvent(pObject,P1)

	Func setCloseEvent P1
		return QAllEvents_setCloseEvent(pObject,P1)

	Func setContextMenuEvent P1
		return QAllEvents_setContextMenuEvent(pObject,P1)

	Func setDragEnterEvent P1
		return QAllEvents_setDragEnterEvent(pObject,P1)

	Func setDragLeaveEvent P1
		return QAllEvents_setDragLeaveEvent(pObject,P1)

	Func setDragMoveEvent P1
		return QAllEvents_setDragMoveEvent(pObject,P1)

	Func setDropEvent P1
		return QAllEvents_setDropEvent(pObject,P1)

	Func setEnterEvent P1
		return QAllEvents_setEnterEvent(pObject,P1)

	Func setFocusInEvent P1
		return QAllEvents_setFocusInEvent(pObject,P1)

	Func setFocusOutEvent P1
		return QAllEvents_setFocusOutEvent(pObject,P1)

	Func setKeyReleaseEvent P1
		return QAllEvents_setKeyReleaseEvent(pObject,P1)

	Func setLeaveEvent P1
		return QAllEvents_setLeaveEvent(pObject,P1)

	Func setNonClientAreaMouseButtonDblClickEvent P1
		return QAllEvents_setNonClientAreaMouseButtonDblClickEvent(pObject,P1)

	Func setNonClientAreaMouseButtonPressEvent P1
		return QAllEvents_setNonClientAreaMouseButtonPressEvent(pObject,P1)

	Func setNonClientAreaMouseButtonReleaseEvent P1
		return QAllEvents_setNonClientAreaMouseButtonReleaseEvent(pObject,P1)

	Func setNonClientAreaMouseMoveEvent P1
		return QAllEvents_setNonClientAreaMouseMoveEvent(pObject,P1)

	Func setMoveEvent P1
		return QAllEvents_setMoveEvent(pObject,P1)

	Func setResizeEvent P1
		return QAllEvents_setResizeEvent(pObject,P1)

	Func setWindowActivateEvent P1
		return QAllEvents_setWindowActivateEvent(pObject,P1)

	Func setWindowBlockedEvent P1
		return QAllEvents_setWindowBlockedEvent(pObject,P1)

	Func setWindowDeactivateEvent P1
		return QAllEvents_setWindowDeactivateEvent(pObject,P1)

	Func setWindowStateChangeEvent P1
		return QAllEvents_setWindowStateChangeEvent(pObject,P1)

	Func setWindowUnblockedEvent P1
		return QAllEvents_setWindowUnblockedEvent(pObject,P1)

	Func setPaintEvent P1
		return QAllEvents_setPaintEvent(pObject,P1)

	Func setChildAddedEvent P1
		return QAllEvents_setChildAddedEvent(pObject,P1)

	Func setChildPolishedEvent P1
		return QAllEvents_setChildPolishedEvent(pObject,P1)

	Func setChildRemovedEvent P1
		return QAllEvents_setChildRemovedEvent(pObject,P1)

	Func getKeyPressEvent 
		return QAllEvents_getKeyPressEvent(pObject)

	Func getMouseButtonPressEvent 
		return QAllEvents_getMouseButtonPressEvent(pObject)

	Func getMouseButtonReleaseEvent 
		return QAllEvents_getMouseButtonReleaseEvent(pObject)

	Func getMouseButtonDblClickEvent 
		return QAllEvents_getMouseButtonDblClickEvent(pObject)

	Func getMouseMoveEvent 
		return QAllEvents_getMouseMoveEvent(pObject)

	Func getCloseEvent 
		return QAllEvents_getCloseEvent(pObject)

	Func getContextMenuEvent 
		return QAllEvents_getContextMenuEvent(pObject)

	Func getDragEnterEvent 
		return QAllEvents_getDragEnterEvent(pObject)

	Func getDragLeaveEvent 
		return QAllEvents_getDragLeaveEvent(pObject)

	Func getDragMoveEvent 
		return QAllEvents_getDragMoveEvent(pObject)

	Func getDropEvent 
		return QAllEvents_getDropEvent(pObject)

	Func getEnterEvent 
		return QAllEvents_getEnterEvent(pObject)

	Func getFocusInEvent 
		return QAllEvents_getFocusInEvent(pObject)

	Func getFocusOutEvent 
		return QAllEvents_getFocusOutEvent(pObject)

	Func getKeyReleaseEvent 
		return QAllEvents_getKeyReleaseEvent(pObject)

	Func getLeaveEvent 
		return QAllEvents_getLeaveEvent(pObject)

	Func getNonClientAreaMouseButtonDblClickEvent 
		return QAllEvents_getNonClientAreaMouseButtonDblClickEvent(pObject)

	Func getNonClientAreaMouseButtonPressEvent 
		return QAllEvents_getNonClientAreaMouseButtonPressEvent(pObject)

	Func getNonClientAreaMouseButtonReleaseEvent 
		return QAllEvents_getNonClientAreaMouseButtonReleaseEvent(pObject)

	Func getNonClientAreaMouseMoveEvent 
		return QAllEvents_getNonClientAreaMouseMoveEvent(pObject)

	Func getMoveEvent 
		return QAllEvents_getMoveEvent(pObject)

	Func getResizeEvent 
		return QAllEvents_getResizeEvent(pObject)

	Func getWindowActivateEvent 
		return QAllEvents_getWindowActivateEvent(pObject)

	Func getWindowBlockedEvent 
		return QAllEvents_getWindowBlockedEvent(pObject)

	Func getWindowDeactivateEvent 
		return QAllEvents_getWindowDeactivateEvent(pObject)

	Func getWindowStateChangeEvent 
		return QAllEvents_getWindowStateChangeEvent(pObject)

	Func getWindowUnblockedEvent 
		return QAllEvents_getWindowUnblockedEvent(pObject)

	Func getPaintEvent 
		return QAllEvents_getPaintEvent(pObject)

	Func getChildAddedEvent 
		return QAllEvents_getChildAddedEvent(pObject)

	Func getChildPolishedEvent 
		return QAllEvents_getChildPolishedEvent(pObject)

	Func getChildRemovedEvent 
		return QAllEvents_getChildRemovedEvent(pObject)

	Func setEventOutput P1
		return QAllEvents_setEventOutput(pObject,P1)

	Func getParentObject 
		pTempObj = new QObject
		pTempObj.pObject = QAllEvents_getParentObject(pObject)
		return pTempObj

	Func getParentWidget 
		pTempObj = new QWidget
		pTempObj.pObject = QAllEvents_getParentWidget(pObject)
		return pTempObj

	Func setKeyPressFunc P1
		return QAllEvents_setKeyPressFunc(pObject,P1)

	Func setMouseButtonPressFunc P1
		return QAllEvents_setMouseButtonPressFunc(pObject,P1)

	Func setMouseButtonReleaseFunc P1
		return QAllEvents_setMouseButtonReleaseFunc(pObject,P1)

	Func setMouseButtonDblClickFunc P1
		return QAllEvents_setMouseButtonDblClickFunc(pObject,P1)

	Func setMouseMoveFunc P1
		return QAllEvents_setMouseMoveFunc(pObject,P1)

	Func setCloseFunc P1
		return QAllEvents_setCloseFunc(pObject,P1)

	Func setContextMenuFunc P1
		return QAllEvents_setContextMenuFunc(pObject,P1)

	Func setDragEnterFunc P1
		return QAllEvents_setDragEnterFunc(pObject,P1)

	Func setDragLeaveFunc P1
		return QAllEvents_setDragLeaveFunc(pObject,P1)

	Func setDragMoveFunc P1
		return QAllEvents_setDragMoveFunc(pObject,P1)

	Func setDropFunc P1
		return QAllEvents_setDropFunc(pObject,P1)

	Func setEnterFunc P1
		return QAllEvents_setEnterFunc(pObject,P1)

	Func setFocusInFunc P1
		return QAllEvents_setFocusInFunc(pObject,P1)

	Func setFocusOutFunc P1
		return QAllEvents_setFocusOutFunc(pObject,P1)

	Func setKeyReleaseFunc P1
		return QAllEvents_setKeyReleaseFunc(pObject,P1)

	Func setLeaveFunc P1
		return QAllEvents_setLeaveFunc(pObject,P1)

	Func setNonClientAreaMouseButtonDblClickFunc P1
		return QAllEvents_setNonClientAreaMouseButtonDblClickFunc(pObject,P1)

	Func setNonClientAreaMouseButtonPressFunc P1
		return QAllEvents_setNonClientAreaMouseButtonPressFunc(pObject,P1)

	Func setNonClientAreaMouseButtonReleaseFunc P1
		return QAllEvents_setNonClientAreaMouseButtonReleaseFunc(pObject,P1)

	Func setNonClientAreaMouseMoveFunc P1
		return QAllEvents_setNonClientAreaMouseMoveFunc(pObject,P1)

	Func setMoveFunc P1
		return QAllEvents_setMoveFunc(pObject,P1)

	Func setResizeFunc P1
		return QAllEvents_setResizeFunc(pObject,P1)

	Func setWindowActivateFunc P1
		return QAllEvents_setWindowActivateFunc(pObject,P1)

	Func setWindowBlockedFunc P1
		return QAllEvents_setWindowBlockedFunc(pObject,P1)

	Func setWindowDeactivateFunc P1
		return QAllEvents_setWindowDeactivateFunc(pObject,P1)

	Func setWindowStateChangeFunc P1
		return QAllEvents_setWindowStateChangeFunc(pObject,P1)

	Func setWindowUnblockedFunc P1
		return QAllEvents_setWindowUnblockedFunc(pObject,P1)

	Func setPaintFunc P1
		return QAllEvents_setPaintFunc(pObject,P1)

	Func setChildAddedFunc P1
		return QAllEvents_setChildAddedFunc(pObject,P1)

	Func setChildPolishedFunc P1
		return QAllEvents_setChildPolishedFunc(pObject,P1)

	Func setChildRemovedFunc P1
		return QAllEvents_setChildRemovedFunc(pObject,P1)

	Func getKeyPressFunc 
		return QAllEvents_getKeyPressFunc(pObject)

	Func getMouseButtonPressFunc 
		return QAllEvents_getMouseButtonPressFunc(pObject)

	Func getMouseButtonReleaseFunc 
		return QAllEvents_getMouseButtonReleaseFunc(pObject)

	Func getMouseButtonDblClickFunc 
		return QAllEvents_getMouseButtonDblClickFunc(pObject)

	Func getMouseMoveFunc 
		return QAllEvents_getMouseMoveFunc(pObject)

	Func getCloseFunc 
		return QAllEvents_getCloseFunc(pObject)

	Func getContextMenuFunc 
		return QAllEvents_getContextMenuFunc(pObject)

	Func getDragEnterFunc 
		return QAllEvents_getDragEnterFunc(pObject)

	Func getDragLeaveFunc 
		return QAllEvents_getDragLeaveFunc(pObject)

	Func getDragMoveFunc 
		return QAllEvents_getDragMoveFunc(pObject)

	Func getDropFunc 
		return QAllEvents_getDropFunc(pObject)

	Func getEnterFunc 
		return QAllEvents_getEnterFunc(pObject)

	Func getFocusInFunc 
		return QAllEvents_getFocusInFunc(pObject)

	Func getFocusOutFunc 
		return QAllEvents_getFocusOutFunc(pObject)

	Func getKeyReleaseFunc 
		return QAllEvents_getKeyReleaseFunc(pObject)

	Func getLeaveFunc 
		return QAllEvents_getLeaveFunc(pObject)

	Func getNonClientAreaMouseButtonDblClickFunc 
		return QAllEvents_getNonClientAreaMouseButtonDblClickFunc(pObject)

	Func getNonClientAreaMouseButtonPressFunc 
		return QAllEvents_getNonClientAreaMouseButtonPressFunc(pObject)

	Func getNonClientAreaMouseButtonReleaseFunc 
		return QAllEvents_getNonClientAreaMouseButtonReleaseFunc(pObject)

	Func getNonClientAreaMouseMoveFunc 
		return QAllEvents_getNonClientAreaMouseMoveFunc(pObject)

	Func getMoveFunc 
		return QAllEvents_getMoveFunc(pObject)

	Func getResizeFunc 
		return QAllEvents_getResizeFunc(pObject)

	Func getWindowActivateFunc 
		return QAllEvents_getWindowActivateFunc(pObject)

	Func getWindowBlockedFunc 
		return QAllEvents_getWindowBlockedFunc(pObject)

	Func getWindowDeactivateFunc 
		return QAllEvents_getWindowDeactivateFunc(pObject)

	Func getWindowStateChangeFunc 
		return QAllEvents_getWindowStateChangeFunc(pObject)

	Func getWindowUnblockedFunc 
		return QAllEvents_getWindowUnblockedFunc(pObject)

	Func getPaintFunc 
		return QAllEvents_getPaintFunc(pObject)

	Func getChildAddedFunc 
		return QAllEvents_getChildAddedFunc(pObject)

	Func getChildPolishedFunc 
		return QAllEvents_getChildPolishedFunc(pObject)

	Func getChildRemovedFunc 
		return QAllEvents_getChildRemovedFunc(pObject)

	Func getDropEventObject 
		pTempObj = new QDropEvent
		pTempObj.pObject = QAllEvents_getDropEventObject(pObject)
		return pTempObj

	Func getDragMoveEventObject 
		pTempObj = new QDragMoveEvent
		pTempObj.pObject = QAllEvents_getDragMoveEventObject(pObject)
		return pTempObj

	Func getDragEnterEventObject 
		pTempObj = new QDragEnterEvent
		pTempObj.pObject = QAllEvents_getDragEnterEventObject(pObject)
		return pTempObj

	Func getDragLeaveEventObject 
		pTempObj = new QDragLeaveEvent
		pTempObj.pObject = QAllEvents_getDragLeaveEventObject(pObject)
		return pTempObj

	Func getChildEventObject 
		pTempObj = new QChildEvent
		pTempObj.pObject = QAllEvents_getChildEventObject(pObject)
		return pTempObj

Class QListWidgetItem

	pObject

	Func init 
		pObject = QListWidgetItem_new()
		return self

	Func delete
		pObject = QListWidgetItem_delete(pObject)

	Func ObjectPointer
		return pObject

	Func background 
		pTempObj = new QBrush
		pTempObj.pObject = QListWidgetItem_background(pObject)
		return pTempObj

	Func checkState 
		return QListWidgetItem_checkState(pObject)

	Func flags 
		return QListWidgetItem_flags(pObject)

	Func font 
		pTempObj = new QFont
		pTempObj.pObject = QListWidgetItem_font(pObject)
		return pTempObj

	Func foreground 
		pTempObj = new QBrush
		pTempObj.pObject = QListWidgetItem_foreground(pObject)
		return pTempObj

	Func icon 
		pTempObj = new QIcon
		pTempObj.pObject = QListWidgetItem_icon(pObject)
		return pTempObj

	Func isHidden 
		return QListWidgetItem_isHidden(pObject)

	Func isSelected 
		return QListWidgetItem_isSelected(pObject)

	Func listWidget 
		pTempObj = new QListWidget
		pTempObj.pObject = QListWidgetItem_listWidget(pObject)
		return pTempObj

	Func setBackground P1
		return QListWidgetItem_setBackground(pObject,GetObjectPointerFromRingObject(P1))

	Func setCheckState P1
		return QListWidgetItem_setCheckState(pObject,P1)

	Func setFlags P1
		return QListWidgetItem_setFlags(pObject,P1)

	Func setFont P1
		return QListWidgetItem_setFont(pObject,GetObjectPointerFromRingObject(P1))

	Func setForeground P1
		return QListWidgetItem_setForeground(pObject,GetObjectPointerFromRingObject(P1))

	Func setHidden P1
		return QListWidgetItem_setHidden(pObject,P1)

	Func setIcon P1
		return QListWidgetItem_setIcon(pObject,GetObjectPointerFromRingObject(P1))

	Func setSelected P1
		return QListWidgetItem_setSelected(pObject,P1)

	Func setSizeHint P1
		return QListWidgetItem_setSizeHint(pObject,GetObjectPointerFromRingObject(P1))

	Func setStatusTip P1
		return QListWidgetItem_setStatusTip(pObject,P1)

	Func setText P1
		return QListWidgetItem_setText(pObject,P1)

	Func setTextAlignment P1
		return QListWidgetItem_setTextAlignment(pObject,P1)

	Func setToolTip P1
		return QListWidgetItem_setToolTip(pObject,P1)

	Func setWhatsThis P1
		return QListWidgetItem_setWhatsThis(pObject,P1)

	Func sizeHint 
		pTempObj = new QSize
		pTempObj.pObject = QListWidgetItem_sizeHint(pObject)
		return pTempObj

	Func statusTip 
		return QListWidgetItem_statusTip(pObject)

	Func text 
		return QListWidgetItem_text(pObject)

	Func textAlignment 
		return QListWidgetItem_textAlignment(pObject)

	Func toolTip 
		return QListWidgetItem_toolTip(pObject)

	Func type 
		return QListWidgetItem_type(pObject)

	Func whatsThis 
		return QListWidgetItem_whatsThis(pObject)

Class QSystemTrayIcon

	pObject

	Func init 
		pObject = QSystemTrayIcon_new()
		return self

	Func delete
		pObject = QSystemTrayIcon_delete(pObject)

	Func ObjectPointer
		return pObject

	Func contextMenu 
		pTempObj = new QMenu
		pTempObj.pObject = QSystemTrayIcon_contextMenu(pObject)
		return pTempObj

	Func geometry 
		pTempObj = new QRect
		pTempObj.pObject = QSystemTrayIcon_geometry(pObject)
		return pTempObj

	Func icon 
		pTempObj = new QIcon
		pTempObj.pObject = QSystemTrayIcon_icon(pObject)
		return pTempObj

	Func isVisible 
		return QSystemTrayIcon_isVisible(pObject)

	Func setContextMenu P1
		return QSystemTrayIcon_setContextMenu(pObject,GetObjectPointerFromRingObject(P1))

	Func setIcon P1
		return QSystemTrayIcon_setIcon(pObject,GetObjectPointerFromRingObject(P1))

	Func setToolTip P1
		return QSystemTrayIcon_setToolTip(pObject,P1)

	Func toolTip 
		return QSystemTrayIcon_toolTip(pObject)

	Func hide 
		return QSystemTrayIcon_hide(pObject)

	Func setVisible P1
		return QSystemTrayIcon_setVisible(pObject,P1)

	Func show 
		return QSystemTrayIcon_show(pObject)

	Func showMessage P1,P2,P3,P4
		return QSystemTrayIcon_showMessage(pObject,P1,P2,P3,P4)

	Func isSystemTrayAvailable 
		return QSystemTrayIcon_isSystemTrayAvailable(pObject)

	Func supportsMessages 
		return QSystemTrayIcon_supportsMessages(pObject)

Class RingCodeHighlighter

	pObject

	Func init P1
		pObject = RingCodeHighlighter_new(GetObjectPointerFromRingObject(P1))
		return self

	Func delete
		pObject = RingCodeHighlighter_delete(pObject)

	Func ObjectPointer
		return pObject

	Func setColors P1,P2,P3,P4,P5
		return RingCodeHighlighter_setColors(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2),GetObjectPointerFromRingObject(P3),GetObjectPointerFromRingObject(P4),GetObjectPointerFromRingObject(P5))

	Func setKeywordsBold P1
		return RingCodeHighlighter_setKeywordsBold(pObject,P1)

	Func setUseDefaultKeywords P1
		return RingCodeHighlighter_setUseDefaultKeywords(pObject,P1)

	Func setCustomKeywords P1
		return RingCodeHighlighter_setCustomKeywords(pObject,GetObjectPointerFromRingObject(P1))

Class QPlainTextEdit from QAbstractScrollArea

	pObject

	Func init P1
		pObject = QPlainTextEdit_new(GetObjectPointerFromRingObject(P1))
		return self

	Func delete
		pObject = QPlainTextEdit_delete(pObject)

	Func ObjectPointer
		return pObject

	Func setTabStopDistance P1
		return QPlainTextEdit_setTabStopDistance(pObject,P1)

	Func tabStopDistance 
		return QPlainTextEdit_tabStopDistance(pObject)

	Func anchorAt P1
		return QPlainTextEdit_anchorAt(pObject,GetObjectPointerFromRingObject(P1))

	Func backgroundVisible 
		return QPlainTextEdit_backgroundVisible(pObject)

	Func blockCount 
		return QPlainTextEdit_blockCount(pObject)

	Func canPaste 
		return QPlainTextEdit_canPaste(pObject)

	Func centerOnScroll 
		return QPlainTextEdit_centerOnScroll(pObject)

	Func createStandardContextMenu 
		pTempObj = new QMenu
		pTempObj.pObject = QPlainTextEdit_createStandardContextMenu(pObject)
		return pTempObj

	Func currentCharFormat 
		pTempObj = new QTextCharFormat
		pTempObj.pObject = QPlainTextEdit_currentCharFormat(pObject)
		return pTempObj

	Func cursorForPosition P1
		pTempObj = new QTextCursor
		pTempObj.pObject = QPlainTextEdit_cursorForPosition(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func cursorRect P1
		pTempObj = new QRect
		pTempObj.pObject = QPlainTextEdit_cursorRect(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func cursorRect_2 
		pTempObj = new QRect
		pTempObj.pObject = QPlainTextEdit_cursorRect_2(pObject)
		return pTempObj

	Func cursorWidth 
		return QPlainTextEdit_cursorWidth(pObject)

	Func document 
		pTempObj = new QTextDocument
		pTempObj.pObject = QPlainTextEdit_document(pObject)
		return pTempObj

	Func documentTitle 
		return QPlainTextEdit_documentTitle(pObject)

	Func ensureCursorVisible 
		return QPlainTextEdit_ensureCursorVisible(pObject)

	Func extraSelections 
		return QPlainTextEdit_extraSelections(pObject)

	Func find P1,P2
		return QPlainTextEdit_find(pObject,P1,GetObjectPointerFromRingObject(P2))

	Func isReadOnly 
		return QPlainTextEdit_isReadOnly(pObject)

	Func isUndoRedoEnabled 
		return QPlainTextEdit_isUndoRedoEnabled(pObject)

	Func lineWrapMode 
		return QPlainTextEdit_lineWrapMode(pObject)

	Func maximumBlockCount 
		return QPlainTextEdit_maximumBlockCount(pObject)

	Func mergeCurrentCharFormat P1
		return QPlainTextEdit_mergeCurrentCharFormat(pObject,GetObjectPointerFromRingObject(P1))

	Func moveCursor P1,P2
		return QPlainTextEdit_moveCursor(pObject,P1,P2)

	Func overwriteMode 
		return QPlainTextEdit_overwriteMode(pObject)

	Func print P1
		return QPlainTextEdit_print(pObject,GetObjectPointerFromRingObject(P1))

	Func setBackgroundVisible P1
		return QPlainTextEdit_setBackgroundVisible(pObject,P1)

	Func setCenterOnScroll P1
		return QPlainTextEdit_setCenterOnScroll(pObject,P1)

	Func setCurrentCharFormat P1
		return QPlainTextEdit_setCurrentCharFormat(pObject,GetObjectPointerFromRingObject(P1))

	Func setCursorWidth P1
		return QPlainTextEdit_setCursorWidth(pObject,P1)

	Func setDocument P1
		return QPlainTextEdit_setDocument(pObject,GetObjectPointerFromRingObject(P1))

	Func setDocumentTitle P1
		return QPlainTextEdit_setDocumentTitle(pObject,P1)

	Func setExtraSelections P1
		return QPlainTextEdit_setExtraSelections(pObject,GetObjectPointerFromRingObject(P1))

	Func setLineWrapMode P1
		return QPlainTextEdit_setLineWrapMode(pObject,P1)

	Func setMaximumBlockCount P1
		return QPlainTextEdit_setMaximumBlockCount(pObject,P1)

	Func setOverwriteMode P1
		return QPlainTextEdit_setOverwriteMode(pObject,P1)

	Func setReadOnly P1
		return QPlainTextEdit_setReadOnly(pObject,P1)

	Func setTabChangesFocus P1
		return QPlainTextEdit_setTabChangesFocus(pObject,P1)

	Func setTextCursor P1
		return QPlainTextEdit_setTextCursor(pObject,GetObjectPointerFromRingObject(P1))

	Func setTextInteractionFlags P1
		return QPlainTextEdit_setTextInteractionFlags(pObject,GetObjectPointerFromRingObject(P1))

	Func setUndoRedoEnabled P1
		return QPlainTextEdit_setUndoRedoEnabled(pObject,P1)

	Func setWordWrapMode P1
		return QPlainTextEdit_setWordWrapMode(pObject,P1)

	Func tabChangesFocus 
		return QPlainTextEdit_tabChangesFocus(pObject)

	Func textCursor 
		pTempObj = new QTextCursor
		pTempObj.pObject = QPlainTextEdit_textCursor(pObject)
		return pTempObj

	Func textInteractionFlags 
		return QPlainTextEdit_textInteractionFlags(pObject)

	Func toPlainText 
		return QPlainTextEdit_toPlainText(pObject)

	Func wordWrapMode 
		return QPlainTextEdit_wordWrapMode(pObject)

	Func appendHtml P1
		return QPlainTextEdit_appendHtml(pObject,P1)

	Func appendPlainText P1
		return QPlainTextEdit_appendPlainText(pObject,P1)

	Func centerCursor 
		return QPlainTextEdit_centerCursor(pObject)

	Func clear 
		return QPlainTextEdit_clear(pObject)

	Func copy 
		return QPlainTextEdit_copy(pObject)

	Func cut 
		return QPlainTextEdit_cut(pObject)

	Func insertPlainText P1
		return QPlainTextEdit_insertPlainText(pObject,P1)

	Func paste 
		return QPlainTextEdit_paste(pObject)

	Func redo 
		return QPlainTextEdit_redo(pObject)

	Func selectAll 
		return QPlainTextEdit_selectAll(pObject)

	Func setPlainText P1
		return QPlainTextEdit_setPlainText(pObject,P1)

	Func undo 
		return QPlainTextEdit_undo(pObject)

	Func zoomIn P1
		return QPlainTextEdit_zoomIn(pObject,P1)

	Func zoomOut P1
		return QPlainTextEdit_zoomOut(pObject,P1)

	Func setblockCountChangedEvent P1
		return QPlainTextEdit_setblockCountChangedEvent(pObject,P1)

	Func setcopyAvailableEvent P1
		return QPlainTextEdit_setcopyAvailableEvent(pObject,P1)

	Func setcursorPositionChangedEvent P1
		return QPlainTextEdit_setcursorPositionChangedEvent(pObject,P1)

	Func setmodificationChangedEvent P1
		return QPlainTextEdit_setmodificationChangedEvent(pObject,P1)

	Func setredoAvailableEvent P1
		return QPlainTextEdit_setredoAvailableEvent(pObject,P1)

	Func setselectionChangedEvent P1
		return QPlainTextEdit_setselectionChangedEvent(pObject,P1)

	Func settextChangedEvent P1
		return QPlainTextEdit_settextChangedEvent(pObject,P1)

	Func setundoAvailableEvent P1
		return QPlainTextEdit_setundoAvailableEvent(pObject,P1)

	Func setupdateRequestEvent P1
		return QPlainTextEdit_setupdateRequestEvent(pObject,P1)

	Func getblockCountChangedEvent 
		return QPlainTextEdit_getblockCountChangedEvent(pObject)

	Func getcopyAvailableEvent 
		return QPlainTextEdit_getcopyAvailableEvent(pObject)

	Func getcursorPositionChangedEvent 
		return QPlainTextEdit_getcursorPositionChangedEvent(pObject)

	Func getmodificationChangedEvent 
		return QPlainTextEdit_getmodificationChangedEvent(pObject)

	Func getredoAvailableEvent 
		return QPlainTextEdit_getredoAvailableEvent(pObject)

	Func getselectionChangedEvent 
		return QPlainTextEdit_getselectionChangedEvent(pObject)

	Func gettextChangedEvent 
		return QPlainTextEdit_gettextChangedEvent(pObject)

	Func getundoAvailableEvent 
		return QPlainTextEdit_getundoAvailableEvent(pObject)

	Func getupdateRequestEvent 
		return QPlainTextEdit_getupdateRequestEvent(pObject)

	Func cyanline 
		return QPlainTextEdit_cyanline(pObject)

	Func setactivelinecolor P1
		return QPlainTextEdit_setactivelinecolor(pObject,GetObjectPointerFromRingObject(P1))

Class CodeEditor from QPlainTextEdit

	pObject

	Func init P1
		pObject = CodeEditor_new(GetObjectPointerFromRingObject(P1))
		return self

	Func delete
		pObject = CodeEditor_delete(pObject)

	Func ObjectPointer
		return pObject

	Func setCompleter P1
		return CodeEditor_setCompleter(pObject,GetObjectPointerFromRingObject(P1))

	Func completer 
		pTempObj = new QCompleter
		pTempObj.pObject = CodeEditor_completer(pObject)
		return pTempObj

	Func setLineNumbersAreaColor P1
		return CodeEditor_setLineNumbersAreaColor(pObject,GetObjectPointerFromRingObject(P1))

	Func setLineNumbersAreaBackColor P1
		return CodeEditor_setLineNumbersAreaBackColor(pObject,GetObjectPointerFromRingObject(P1))

Class QGridLayout

	pObject

	Func init 
		pObject = QGridLayout_new()
		return self

	Func delete
		pObject = QGridLayout_delete(pObject)

	Func ObjectPointer
		return pObject

	Func addItem P1,P2,P3,P4,P5,P6
		return QGridLayout_addItem(pObject,GetObjectPointerFromRingObject(P1),P2,P3,P4,P5,P6)

	Func addLayout P1,P2,P3,P4
		return QGridLayout_addLayout(pObject,GetObjectPointerFromRingObject(P1),P2,P3,P4)

	Func addLayout_2 P1,P2,P3,P4,P5,P6
		return QGridLayout_addLayout_2(pObject,GetObjectPointerFromRingObject(P1),P2,P3,P4,P5,P6)

	Func addWidget P1,P2,P3,P4
		return QGridLayout_addWidget(pObject,GetObjectPointerFromRingObject(P1),P2,P3,P4)

	Func addWidget_2 P1,P2,P3,P4,P5,P6
		return QGridLayout_addWidget_2(pObject,GetObjectPointerFromRingObject(P1),P2,P3,P4,P5,P6)

	Func cellRect P1,P2
		pTempObj = new QRect
		pTempObj.pObject = QGridLayout_cellRect(pObject,P1,P2)
		return pTempObj

	Func columnCount 
		return QGridLayout_columnCount(pObject)

	Func columnMinimumWidth P1
		return QGridLayout_columnMinimumWidth(pObject,P1)

	Func columnStretch P1
		return QGridLayout_columnStretch(pObject,P1)

	Func getItemPosition P1,P2,P3,P4,P5
		return QGridLayout_getItemPosition(pObject,P1,GetObjectPointerFromRingObject(P2),GetObjectPointerFromRingObject(P3),GetObjectPointerFromRingObject(P4),GetObjectPointerFromRingObject(P5))

	Func horizontalSpacing 
		return QGridLayout_horizontalSpacing(pObject)

	Func itemAtPosition P1,P2
		return QGridLayout_itemAtPosition(pObject,P1,P2)

	Func originCorner 
		return QGridLayout_originCorner(pObject)

	Func rowCount 
		return QGridLayout_rowCount(pObject)

	Func rowMinimumHeight P1
		return QGridLayout_rowMinimumHeight(pObject,P1)

	Func rowStretch P1
		return QGridLayout_rowStretch(pObject,P1)

	Func setColumnMinimumWidth P1,P2
		return QGridLayout_setColumnMinimumWidth(pObject,P1,P2)

	Func setColumnStretch P1,P2
		return QGridLayout_setColumnStretch(pObject,P1,P2)

	Func setHorizontalSpacing P1
		return QGridLayout_setHorizontalSpacing(pObject,P1)

	Func setOriginCorner P1
		return QGridLayout_setOriginCorner(pObject,P1)

	Func setRowMinimumHeight P1,P2
		return QGridLayout_setRowMinimumHeight(pObject,P1,P2)

	Func setRowStretch P1,P2
		return QGridLayout_setRowStretch(pObject,P1,P2)

	Func setSpacing P1
		return QGridLayout_setSpacing(pObject,P1)

	Func setVerticalSpacing P1
		return QGridLayout_setVerticalSpacing(pObject,P1)

	Func spacing 
		return QGridLayout_spacing(pObject)

	Func verticalSpacing 
		return QGridLayout_verticalSpacing(pObject)

Class QHeaderView from QAbstractItemView

	pObject

	Func init P1,P2
		pObject = QHeaderView_new(P1,GetObjectPointerFromRingObject(P2))
		return self

	Func delete
		pObject = QHeaderView_delete(pObject)

	Func ObjectPointer
		return pObject

	Func cascadingSectionResizes 
		return QHeaderView_cascadingSectionResizes(pObject)

	Func count 
		return QHeaderView_count(pObject)

	Func defaultAlignment 
		return QHeaderView_defaultAlignment(pObject)

	Func defaultSectionSize 
		return QHeaderView_defaultSectionSize(pObject)

	Func hiddenSectionCount 
		return QHeaderView_hiddenSectionCount(pObject)

	Func hideSection P1
		return QHeaderView_hideSection(pObject,P1)

	Func highlightSections 
		return QHeaderView_highlightSections(pObject)

	Func isSectionHidden P1
		return QHeaderView_isSectionHidden(pObject,P1)

	Func isSortIndicatorShown 
		return QHeaderView_isSortIndicatorShown(pObject)

	Func length 
		return QHeaderView_length(pObject)

	Func logicalIndex P1
		return QHeaderView_logicalIndex(pObject,P1)

	Func logicalIndexAt P1
		return QHeaderView_logicalIndexAt(pObject,P1)

	Func logicalIndexAt_2 P1,P2
		return QHeaderView_logicalIndexAt_2(pObject,P1,P2)

	Func logicalIndexAt_3 P1
		return QHeaderView_logicalIndexAt_3(pObject,GetObjectPointerFromRingObject(P1))

	Func maximumSectionSize 
		return QHeaderView_maximumSectionSize(pObject)

	Func minimumSectionSize_2 
		return QHeaderView_minimumSectionSize_2(pObject)

	Func moveSection P1,P2
		return QHeaderView_moveSection(pObject,P1,P2)

	Func offset 
		return QHeaderView_offset(pObject)

	Func orientation 
		return QHeaderView_orientation(pObject)

	Func resizeContentsPrecision 
		return QHeaderView_resizeContentsPrecision(pObject)

	Func resizeSection P1,P2
		return QHeaderView_resizeSection(pObject,P1,P2)

	Func resizeSections P1
		return QHeaderView_resizeSections(pObject,P1)

	Func restoreState P1
		return QHeaderView_restoreState(pObject,GetObjectPointerFromRingObject(P1))

	Func saveState 
		pTempObj = new QByteArray
		pTempObj.pObject = QHeaderView_saveState(pObject)
		return pTempObj

	Func sectionPosition P1
		return QHeaderView_sectionPosition(pObject,P1)

	Func sectionResizeMode P1
		return QHeaderView_sectionResizeMode(pObject,P1)

	Func sectionSize P1
		return QHeaderView_sectionSize(pObject,P1)

	Func sectionSizeHint P1
		return QHeaderView_sectionSizeHint(pObject,P1)

	Func sectionViewportPosition P1
		return QHeaderView_sectionViewportPosition(pObject,P1)

	Func sectionsClickable 
		return QHeaderView_sectionsClickable(pObject)

	Func sectionsHidden 
		return QHeaderView_sectionsHidden(pObject)

	Func sectionsMovable 
		return QHeaderView_sectionsMovable(pObject)

	Func sectionsMoved 
		return QHeaderView_sectionsMoved(pObject)

	Func setCascadingSectionResizes P1
		return QHeaderView_setCascadingSectionResizes(pObject,P1)

	Func setDefaultAlignment P1
		return QHeaderView_setDefaultAlignment(pObject,P1)

	Func setDefaultSectionSize P1
		return QHeaderView_setDefaultSectionSize(pObject,P1)

	Func setHighlightSections P1
		return QHeaderView_setHighlightSections(pObject,P1)

	Func setMaximumSectionSize P1
		return QHeaderView_setMaximumSectionSize(pObject,P1)

	Func setMinimumSectionSize P1
		return QHeaderView_setMinimumSectionSize(pObject,P1)

	Func setResizeContentsPrecision P1
		return QHeaderView_setResizeContentsPrecision(pObject,P1)

	Func setSectionHidden P1,P2
		return QHeaderView_setSectionHidden(pObject,P1,P2)

	Func setSectionResizeMode P1
		return QHeaderView_setSectionResizeMode(pObject,P1)

	Func setSectionResizeMode_2 P1,P2
		return QHeaderView_setSectionResizeMode_2(pObject,P1,P2)

	Func setSectionsClickable P1
		return QHeaderView_setSectionsClickable(pObject,P1)

	Func setSectionsMovable P1
		return QHeaderView_setSectionsMovable(pObject,P1)

	Func setSortIndicator P1,P2
		return QHeaderView_setSortIndicator(pObject,P1,P2)

	Func setSortIndicatorShown P1
		return QHeaderView_setSortIndicatorShown(pObject,P1)

	Func setStretchLastSection P1
		return QHeaderView_setStretchLastSection(pObject,P1)

	Func showSection P1
		return QHeaderView_showSection(pObject,P1)

	Func sortIndicatorOrder 
		return QHeaderView_sortIndicatorOrder(pObject)

	Func sortIndicatorSection 
		return QHeaderView_sortIndicatorSection(pObject)

	Func stretchLastSection 
		return QHeaderView_stretchLastSection(pObject)

	Func stretchSectionCount 
		return QHeaderView_stretchSectionCount(pObject)

	Func swapSections P1,P2
		return QHeaderView_swapSections(pObject,P1,P2)

	Func visualIndex P1
		return QHeaderView_visualIndex(pObject,P1)

	Func visualIndexAt P1
		return QHeaderView_visualIndexAt(pObject,P1)

	Func headerDataChanged P1,P2,P3
		return QHeaderView_headerDataChanged(pObject,P1,P2,P3)

	Func setOffset P1
		return QHeaderView_setOffset(pObject,P1)

	Func setOffsetToLastSection 
		return QHeaderView_setOffsetToLastSection(pObject)

	Func setOffsetToSectionPosition P1
		return QHeaderView_setOffsetToSectionPosition(pObject,P1)

	Func setgeometriesChangedEvent P1
		return QHeaderView_setgeometriesChangedEvent(pObject,P1)

	Func setsectionClickedEvent P1
		return QHeaderView_setsectionClickedEvent(pObject,P1)

	Func setsectionCountChangedEvent P1
		return QHeaderView_setsectionCountChangedEvent(pObject,P1)

	Func setsectionDoubleClickedEvent P1
		return QHeaderView_setsectionDoubleClickedEvent(pObject,P1)

	Func setsectionEnteredEvent P1
		return QHeaderView_setsectionEnteredEvent(pObject,P1)

	Func setsectionHandleDoubleClickedEvent P1
		return QHeaderView_setsectionHandleDoubleClickedEvent(pObject,P1)

	Func setsectionMovedEvent P1
		return QHeaderView_setsectionMovedEvent(pObject,P1)

	Func setsectionPressedEvent P1
		return QHeaderView_setsectionPressedEvent(pObject,P1)

	Func setsectionResizedEvent P1
		return QHeaderView_setsectionResizedEvent(pObject,P1)

	Func setsortIndicatorChangedEvent P1
		return QHeaderView_setsortIndicatorChangedEvent(pObject,P1)

	Func getgeometriesChangedEvent 
		return QHeaderView_getgeometriesChangedEvent(pObject)

	Func getsectionClickedEvent 
		return QHeaderView_getsectionClickedEvent(pObject)

	Func getsectionCountChangedEvent 
		return QHeaderView_getsectionCountChangedEvent(pObject)

	Func getsectionDoubleClickedEvent 
		return QHeaderView_getsectionDoubleClickedEvent(pObject)

	Func getsectionEnteredEvent 
		return QHeaderView_getsectionEnteredEvent(pObject)

	Func getsectionHandleDoubleClickedEvent 
		return QHeaderView_getsectionHandleDoubleClickedEvent(pObject)

	Func getsectionMovedEvent 
		return QHeaderView_getsectionMovedEvent(pObject)

	Func getsectionPressedEvent 
		return QHeaderView_getsectionPressedEvent(pObject)

	Func getsectionResizedEvent 
		return QHeaderView_getsectionResizedEvent(pObject)

	Func getsortIndicatorChangedEvent 
		return QHeaderView_getsortIndicatorChangedEvent(pObject)

	Func geteventparameters 
		return QHeaderView_geteventparameters(pObject)

Class QSplashScreen from QWidget

	pObject

	Func init P1
		pObject = QSplashScreen_new(GetObjectPointerFromRingObject(P1))
		return self

	Func delete
		pObject = QSplashScreen_delete(pObject)

	Func ObjectPointer
		return pObject

	Func finish P1
		return QSplashScreen_finish(pObject,GetObjectPointerFromRingObject(P1))

	Func pixmap 
		pTempObj = new QPixmap
		pTempObj.pObject = QSplashScreen_pixmap(pObject)
		return pTempObj

	Func repaint 
		return QSplashScreen_repaint(pObject)

	Func setPixmap P1
		return QSplashScreen_setPixmap(pObject,GetObjectPointerFromRingObject(P1))

	Func clearMessage 
		return QSplashScreen_clearMessage(pObject)

	Func showMessage P1,P2,P3
		return QSplashScreen_showMessage(pObject,P1,P2,GetObjectPointerFromRingObject(P3))

Class QBoxLayout from QLayout

	pObject

	Func init P1,P2
		pObject = QBoxLayout_new(GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2))
		return self

	Func delete
		pObject = QBoxLayout_delete(pObject)

	Func ObjectPointer
		return pObject

	Func addLayout P1,P2
		return QBoxLayout_addLayout(pObject,GetObjectPointerFromRingObject(P1),P2)

	Func addSpacerItem P1
		return QBoxLayout_addSpacerItem(pObject,GetObjectPointerFromRingObject(P1))

	Func addSpacing P1
		return QBoxLayout_addSpacing(pObject,P1)

	Func addStretch P1
		return QBoxLayout_addStretch(pObject,P1)

	Func addStrut P1
		return QBoxLayout_addStrut(pObject,P1)

	Func addWidget P1,P2,P3
		return QBoxLayout_addWidget(pObject,GetObjectPointerFromRingObject(P1),P2,P3)

	Func direction 
		return QBoxLayout_direction(pObject)

	Func insertLayout P1,P2,P3
		return QBoxLayout_insertLayout(pObject,P1,GetObjectPointerFromRingObject(P2),P3)

	Func insertSpacerItem P1,P2
		return QBoxLayout_insertSpacerItem(pObject,P1,GetObjectPointerFromRingObject(P2))

	Func insertSpacing P1,P2
		return QBoxLayout_insertSpacing(pObject,P1,P2)

	Func insertStretch P1,P2
		return QBoxLayout_insertStretch(pObject,P1,P2)

	Func insertWidget P1,P2,P3,P4
		return QBoxLayout_insertWidget(pObject,P1,GetObjectPointerFromRingObject(P2),P3,P4)

	Func setDirection P1
		return QBoxLayout_setDirection(pObject,GetObjectPointerFromRingObject(P1))

	Func setSpacing P1
		return QBoxLayout_setSpacing(pObject,P1)

	Func setStretch P1,P2
		return QBoxLayout_setStretch(pObject,P1,P2)

	Func setStretchFactor P1,P2
		return QBoxLayout_setStretchFactor(pObject,GetObjectPointerFromRingObject(P1),P2)

	Func setStretchFactor_2 P1,P2
		return QBoxLayout_setStretchFactor_2(pObject,GetObjectPointerFromRingObject(P1),P2)

	Func spacing 
		return QBoxLayout_spacing(pObject)

	Func stretch P1
		return QBoxLayout_stretch(pObject,P1)

Class QLayout from QObject

	pObject

	Func init P1
		pObject = QLayout_new(GetObjectPointerFromRingObject(P1))
		return self

	Func delete
		pObject = QLayout_delete(pObject)

	Func ObjectPointer
		return pObject

	Func activate 
		return QLayout_activate(pObject)

	Func addWidget P1
		return QLayout_addWidget(pObject,GetObjectPointerFromRingObject(P1))

	Func contentsMargins 
		return QLayout_contentsMargins(pObject)

	Func contentsRect 
		pTempObj = new QRect
		pTempObj.pObject = QLayout_contentsRect(pObject)
		return pTempObj

	Func getContentsMargins P1,P2,P3,P4
		return QLayout_getContentsMargins(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2),GetObjectPointerFromRingObject(P3),GetObjectPointerFromRingObject(P4))

	Func isEnabled 
		return QLayout_isEnabled(pObject)

	Func menuBar 
		pTempObj = new QWidget
		pTempObj.pObject = QLayout_menuBar(pObject)
		return pTempObj

	Func parentWidget 
		pTempObj = new QWidget
		pTempObj.pObject = QLayout_parentWidget(pObject)
		return pTempObj

	Func removeItem P1
		return QLayout_removeItem(pObject,GetObjectPointerFromRingObject(P1))

	Func removeWidget P1
		return QLayout_removeWidget(pObject,GetObjectPointerFromRingObject(P1))

	Func setAlignment P1,P2
		return QLayout_setAlignment(pObject,GetObjectPointerFromRingObject(P1),P2)

	Func setAlignment_2 P1
		return QLayout_setAlignment_2(pObject,P1)

	Func setAlignment_3 P1,P2
		return QLayout_setAlignment_3(pObject,GetObjectPointerFromRingObject(P1),P2)

	Func setContentsMargins P1,P2,P3,P4
		return QLayout_setContentsMargins(pObject,P1,P2,P3,P4)

	Func setContentsMargins_2 P1
		return QLayout_setContentsMargins_2(pObject,GetObjectPointerFromRingObject(P1))

	Func setEnabled P1
		return QLayout_setEnabled(pObject,P1)

	Func setMenuBar P1
		return QLayout_setMenuBar(pObject,GetObjectPointerFromRingObject(P1))

	Func setSizeConstraint P1
		return QLayout_setSizeConstraint(pObject,P1)

	Func setSpacing P1
		return QLayout_setSpacing(pObject,P1)

	Func sizeConstraint 
		return QLayout_sizeConstraint(pObject)

	Func spacing 
		return QLayout_spacing(pObject)

	Func update 
		return QLayout_update(pObject)

	Func closestAcceptableSize P1,P2
		pTempObj = new QSize 
		pTempObj.pObject = QLayout_closestAcceptableSize(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2))
		return pTempObj

Class QScrollArea from QAbstractScrollArea

	pObject

	Func init P1
		pObject = QScrollArea_new(GetObjectPointerFromRingObject(P1))
		return self

	Func delete
		pObject = QScrollArea_delete(pObject)

	Func ObjectPointer
		return pObject

	Func alignment 
		return QScrollArea_alignment(pObject)

	Func ensureVisible P1,P2,P3,P4
		return QScrollArea_ensureVisible(pObject,P1,P2,P3,P4)

	Func ensureWidgetVisible P1,P2,P3
		return QScrollArea_ensureWidgetVisible(pObject,GetObjectPointerFromRingObject(P1),P2,P3)

	Func setAlignment P1
		return QScrollArea_setAlignment(pObject,P1)

	Func setWidget P1
		return QScrollArea_setWidget(pObject,GetObjectPointerFromRingObject(P1))

	Func setWidgetResizable P1
		return QScrollArea_setWidgetResizable(pObject,P1)

	Func takeWidget 
		pTempObj = new QWidget
		pTempObj.pObject = QScrollArea_takeWidget(pObject)
		return pTempObj

	Func widget 
		pTempObj = new QWidget
		pTempObj.pObject = QScrollArea_widget(pObject)
		return pTempObj

	Func widgetResizable 
		return QScrollArea_widgetResizable(pObject)

Class QSplitter from QFrame

	pObject

	Func init P1
		pObject = QSplitter_new(GetObjectPointerFromRingObject(P1))
		return self

	Func delete
		pObject = QSplitter_delete(pObject)

	Func ObjectPointer
		return pObject

	Func addWidget P1
		return QSplitter_addWidget(pObject,GetObjectPointerFromRingObject(P1))

	Func childrenCollapsible 
		return QSplitter_childrenCollapsible(pObject)

	Func count 
		return QSplitter_count(pObject)

	Func getRange P1,P2,P3
		return QSplitter_getRange(pObject,P1,GetObjectPointerFromRingObject(P2),GetObjectPointerFromRingObject(P3))

	Func handle P1
		return QSplitter_handle(pObject,P1)

	Func handleWidth 
		return QSplitter_handleWidth(pObject)

	Func indexOf P1
		return QSplitter_indexOf(pObject,GetObjectPointerFromRingObject(P1))

	Func insertWidget P1,P2
		return QSplitter_insertWidget(pObject,P1,GetObjectPointerFromRingObject(P2))

	Func isCollapsible P1
		return QSplitter_isCollapsible(pObject,P1)

	Func opaqueResize 
		return QSplitter_opaqueResize(pObject)

	Func orientation 
		return QSplitter_orientation(pObject)

	Func refresh 
		return QSplitter_refresh(pObject)

	Func restoreState P1
		return QSplitter_restoreState(pObject,GetObjectPointerFromRingObject(P1))

	Func saveState 
		pTempObj = new QByteArray
		pTempObj.pObject = QSplitter_saveState(pObject)
		return pTempObj

	Func setChildrenCollapsible P1
		return QSplitter_setChildrenCollapsible(pObject,P1)

	Func setCollapsible P1,P2
		return QSplitter_setCollapsible(pObject,P1,P2)

	Func setHandleWidth P1
		return QSplitter_setHandleWidth(pObject,P1)

	Func setOpaqueResize P1
		return QSplitter_setOpaqueResize(pObject,P1)

	Func setOrientation P1
		return QSplitter_setOrientation(pObject,P1)

	Func setSizes P1
		return QSplitter_setSizes(pObject,GetObjectPointerFromRingObject(P1))

	Func setStretchFactor P1,P2
		return QSplitter_setStretchFactor(pObject,P1,P2)

	Func sizes 
		return QSplitter_sizes(pObject)

	Func widget P1
		pTempObj = new QWidget
		pTempObj.pObject = QSplitter_widget(pObject,P1)
		return pTempObj

Class QCompleter from QObject

	pObject

	Func init P1
		pObject = QCompleter_new(GetObjectPointerFromRingObject(P1))
		return self

	Func delete
		pObject = QCompleter_delete(pObject)

	Func ObjectPointer
		return pObject

	Func caseSensitivity 
		return QCompleter_caseSensitivity(pObject)

	Func completionColumn 
		return QCompleter_completionColumn(pObject)

	Func completionCount 
		return QCompleter_completionCount(pObject)

	Func completionMode 
		return QCompleter_completionMode(pObject)

	Func completionModel 
		return QCompleter_completionModel(pObject)

	Func completionPrefix 
		return QCompleter_completionPrefix(pObject)

	Func completionRole 
		return QCompleter_completionRole(pObject)

	Func currentCompletion 
		return QCompleter_currentCompletion(pObject)

	Func currentIndex 
		pTempObj = new QModelIndex
		pTempObj.pObject = QCompleter_currentIndex(pObject)
		return pTempObj

	Func currentRow 
		return QCompleter_currentRow(pObject)

	Func filterMode 
		return QCompleter_filterMode(pObject)

	Func maxVisibleItems 
		return QCompleter_maxVisibleItems(pObject)

	Func model 
		return QCompleter_model(pObject)

	Func modelSorting 
		return QCompleter_modelSorting(pObject)

	Func popup 
		pTempObj = new QAbstractItemView
		pTempObj.pObject = QCompleter_popup(pObject)
		return pTempObj

	Func setCaseSensitivity P1
		return QCompleter_setCaseSensitivity(pObject,P1)

	Func setCompletionColumn P1
		return QCompleter_setCompletionColumn(pObject,P1)

	Func setCompletionMode P1
		return QCompleter_setCompletionMode(pObject,P1)

	Func setCompletionRole P1
		return QCompleter_setCompletionRole(pObject,P1)

	Func setCurrentRow P1
		return QCompleter_setCurrentRow(pObject,P1)

	Func setFilterMode P1
		return QCompleter_setFilterMode(pObject,P1)

	Func setMaxVisibleItems P1
		return QCompleter_setMaxVisibleItems(pObject,P1)

	Func setModel P1
		return QCompleter_setModel(pObject,GetObjectPointerFromRingObject(P1))

	Func setModelSorting P1
		return QCompleter_setModelSorting(pObject,P1)

	Func setPopup P1
		return QCompleter_setPopup(pObject,GetObjectPointerFromRingObject(P1))

	Func setWidget P1
		return QCompleter_setWidget(pObject,GetObjectPointerFromRingObject(P1))

	Func widget 
		pTempObj = new QWidget
		pTempObj.pObject = QCompleter_widget(pObject)
		return pTempObj

	Func wrapAround 
		return QCompleter_wrapAround(pObject)

	Func complete P1
		return QCompleter_complete(pObject,GetObjectPointerFromRingObject(P1))

	Func setCompletionPrefix P1
		return QCompleter_setCompletionPrefix(pObject,P1)

	Func setWrapAround P1
		return QCompleter_setWrapAround(pObject,P1)

Class QMdiArea from QAbstractScrollArea

	pObject

	Func init P1
		pObject = QMdiArea_new(GetObjectPointerFromRingObject(P1))
		return self

	Func delete
		pObject = QMdiArea_delete(pObject)

	Func ObjectPointer
		return pObject

	Func activationOrder 
		return QMdiArea_activationOrder(pObject)

	Func activeSubWindow 
		pTempObj = new QMdiSubWindow
		pTempObj.pObject = QMdiArea_activeSubWindow(pObject)
		return pTempObj

	Func addSubWindow P1,P2
		pTempObj = new QMdiSubWindow
		pTempObj.pObject = QMdiArea_addSubWindow(pObject,GetObjectPointerFromRingObject(P1),P2)
		return pTempObj

	Func background 
		pTempObj = new QBrush
		pTempObj.pObject = QMdiArea_background(pObject)
		return pTempObj

	Func currentSubWindow 
		pTempObj = new QMdiSubWindow
		pTempObj.pObject = QMdiArea_currentSubWindow(pObject)
		return pTempObj

	Func documentMode 
		return QMdiArea_documentMode(pObject)

	Func removeSubWindow P1
		return QMdiArea_removeSubWindow(pObject,GetObjectPointerFromRingObject(P1))

	Func setActivationOrder P1
		return QMdiArea_setActivationOrder(pObject,P1)

	Func setBackground P1
		return QMdiArea_setBackground(pObject,GetObjectPointerFromRingObject(P1))

	Func setDocumentMode P1
		return QMdiArea_setDocumentMode(pObject,P1)

	Func setOption P1,P2
		return QMdiArea_setOption(pObject,P1,P2)

	Func setTabPosition P1
		return QMdiArea_setTabPosition(pObject,P1)

	Func setTabShape P1
		return QMdiArea_setTabShape(pObject,P1)

	Func setTabsClosable P1
		return QMdiArea_setTabsClosable(pObject,P1)

	Func setTabsMovable P1
		return QMdiArea_setTabsMovable(pObject,P1)

	Func setViewMode P1
		return QMdiArea_setViewMode(pObject,P1)

	Func subWindowList P1
		return QMdiArea_subWindowList(pObject,P1)

	Func tabPosition 
		return QMdiArea_tabPosition(pObject)

	Func tabShape 
		return QMdiArea_tabShape(pObject)

	Func tabsClosable 
		return QMdiArea_tabsClosable(pObject)

	Func tabsMovable 
		return QMdiArea_tabsMovable(pObject)

	Func testOption P1
		return QMdiArea_testOption(pObject,P1)

	Func viewMode 
		return QMdiArea_viewMode(pObject)

	Func activateNextSubWindow 
		return QMdiArea_activateNextSubWindow(pObject)

	Func activatePreviousSubWindow 
		return QMdiArea_activatePreviousSubWindow(pObject)

	Func cascadeSubWindows 
		return QMdiArea_cascadeSubWindows(pObject)

	Func closeActiveSubWindow 
		return QMdiArea_closeActiveSubWindow(pObject)

	Func closeAllSubWindows 
		return QMdiArea_closeAllSubWindows(pObject)

	Func setActiveSubWindow P1
		return QMdiArea_setActiveSubWindow(pObject,GetObjectPointerFromRingObject(P1))

	Func tileSubWindows 
		return QMdiArea_tileSubWindows(pObject)

Class QMdiSubWindow from QWidget

	pObject

	Func init P1
		pObject = QMdiSubWindow_new(GetObjectPointerFromRingObject(P1))
		return self

	Func delete
		pObject = QMdiSubWindow_delete(pObject)

	Func ObjectPointer
		return pObject

	Func isShaded 
		return QMdiSubWindow_isShaded(pObject)

	Func keyboardPageStep 
		return QMdiSubWindow_keyboardPageStep(pObject)

	Func keyboardSingleStep 
		return QMdiSubWindow_keyboardSingleStep(pObject)

	Func mdiArea 
		pTempObj = new QMdiArea
		pTempObj.pObject = QMdiSubWindow_mdiArea(pObject)
		return pTempObj

	Func setKeyboardPageStep P1
		return QMdiSubWindow_setKeyboardPageStep(pObject,P1)

	Func setKeyboardSingleStep P1
		return QMdiSubWindow_setKeyboardSingleStep(pObject,P1)

	Func setOption P1,P2
		return QMdiSubWindow_setOption(pObject,P1,P2)

	Func setSystemMenu P1
		return QMdiSubWindow_setSystemMenu(pObject,GetObjectPointerFromRingObject(P1))

	Func setWidget P1
		return QMdiSubWindow_setWidget(pObject,GetObjectPointerFromRingObject(P1))

	Func systemMenu 
		pTempObj = new QMenu
		pTempObj.pObject = QMdiSubWindow_systemMenu(pObject)
		return pTempObj

	Func testOption P1
		return QMdiSubWindow_testOption(pObject,P1)

	Func widget 
		pTempObj = new QWidget
		pTempObj.pObject = QMdiSubWindow_widget(pObject)
		return pTempObj

	Func showShaded 
		return QMdiSubWindow_showShaded(pObject)

	Func showSystemMenu 
		return QMdiSubWindow_showSystemMenu(pObject)

Class QListView from QAbstractItemView

	pObject

	Func init P1
		pObject = QListView_new(GetObjectPointerFromRingObject(P1))
		return self

	Func delete
		pObject = QListView_delete(pObject)

	Func ObjectPointer
		return pObject

	Func batchSize 
		return QListView_batchSize(pObject)

	Func clearPropertyFlags 
		return QListView_clearPropertyFlags(pObject)

	Func flow 
		return QListView_flow(pObject)

	Func gridSize 
		pTempObj = new QSize 
		pTempObj.pObject = QListView_gridSize(pObject)
		return pTempObj

	Func isRowHidden P1
		return QListView_isRowHidden(pObject,P1)

	Func isSelectionRectVisible 
		return QListView_isSelectionRectVisible(pObject)

	Func isWrapping 
		return QListView_isWrapping(pObject)

	Func layoutMode 
		return QListView_layoutMode(pObject)

	Func modelColumn 
		return QListView_modelColumn(pObject)

	Func movement 
		return QListView_movement(pObject)

	Func resizeMode 
		return QListView_resizeMode(pObject)

	Func setBatchSize P1
		return QListView_setBatchSize(pObject,P1)

	Func setFlow P1
		return QListView_setFlow(pObject,P1)

	Func setGridSize P1
		return QListView_setGridSize(pObject,GetObjectPointerFromRingObject(P1))

	Func setLayoutMode P1
		return QListView_setLayoutMode(pObject,P1)

	Func setModelColumn P1
		return QListView_setModelColumn(pObject,P1)

	Func setMovement P1
		return QListView_setMovement(pObject,P1)

	Func setResizeMode P1
		return QListView_setResizeMode(pObject,P1)

	Func setRowHidden P1,P2
		return QListView_setRowHidden(pObject,P1,P2)

	Func setSelectionRectVisible P1
		return QListView_setSelectionRectVisible(pObject,P1)

	Func setSpacing P1
		return QListView_setSpacing(pObject,P1)

	Func setUniformItemSizes P1
		return QListView_setUniformItemSizes(pObject,P1)

	Func setViewMode P1
		return QListView_setViewMode(pObject,P1)

	Func setWordWrap P1
		return QListView_setWordWrap(pObject,P1)

	Func setWrapping P1
		return QListView_setWrapping(pObject,P1)

	Func spacing 
		return QListView_spacing(pObject)

	Func uniformItemSizes 
		return QListView_uniformItemSizes(pObject)

	Func viewMode 
		return QListView_viewMode(pObject)

	Func wordWrap 
		return QListView_wordWrap(pObject)

Class QToolButton from QAbstractButton

	pObject

	Func init P1
		pObject = QToolButton_new(GetObjectPointerFromRingObject(P1))
		return self

	Func delete
		pObject = QToolButton_delete(pObject)

	Func ObjectPointer
		return pObject

	Func arrowType 
		return QToolButton_arrowType(pObject)

	Func autoRaise 
		return QToolButton_autoRaise(pObject)

	Func defaultAction 
		pTempObj = new QAction
		pTempObj.pObject = QToolButton_defaultAction(pObject)
		return pTempObj

	Func menu 
		pTempObj = new QMenu
		pTempObj.pObject = QToolButton_menu(pObject)
		return pTempObj

	Func popupMode 
		return QToolButton_popupMode(pObject)

	Func setArrowType P1
		return QToolButton_setArrowType(pObject,GetObjectPointerFromRingObject(P1))

	Func setAutoRaise P1
		return QToolButton_setAutoRaise(pObject,P1)

	Func setMenu P1
		return QToolButton_setMenu(pObject,GetObjectPointerFromRingObject(P1))

	Func setPopupMode P1
		return QToolButton_setPopupMode(pObject,P1)

	Func toolButtonStyle 
		return QToolButton_toolButtonStyle(pObject)

	Func setDefaultAction P1
		return QToolButton_setDefaultAction(pObject,GetObjectPointerFromRingObject(P1))

	Func setToolButtonStyle P1
		return QToolButton_setToolButtonStyle(pObject,P1)

	Func showMenu 
		return QToolButton_showMenu(pObject)

	Func settriggeredEvent P1
		return QToolButton_settriggeredEvent(pObject,P1)

	Func gettriggeredEvent 
		return QToolButton_gettriggeredEvent(pObject)

	Func setClickEvent P1
		return QToolButton_setClickEvent(pObject,P1)

	Func getClickEvent 
		return QToolButton_getClickEvent(pObject)

Class QTextBrowser from QTextEdit

	pObject

	Func init P1
		pObject = QTextBrowser_new(GetObjectPointerFromRingObject(P1))
		return self

	Func delete
		pObject = QTextBrowser_delete(pObject)

	Func ObjectPointer
		return pObject

	Func backwardHistoryCount 
		return QTextBrowser_backwardHistoryCount(pObject)

	Func clearHistory 
		return QTextBrowser_clearHistory(pObject)

	Func forwardHistoryCount 
		return QTextBrowser_forwardHistoryCount(pObject)

	Func historyTitle P1
		return QTextBrowser_historyTitle(pObject,P1)

	Func historyUrl P1
		pTempObj = new QUrl
		pTempObj.pObject = QTextBrowser_historyUrl(pObject,P1)
		return pTempObj

	Func isBackwardAvailable 
		return QTextBrowser_isBackwardAvailable(pObject)

	Func isForwardAvailable 
		return QTextBrowser_isForwardAvailable(pObject)

	Func openExternalLinks 
		return QTextBrowser_openExternalLinks(pObject)

	Func openLinks 
		return QTextBrowser_openLinks(pObject)

	Func searchPaths 
		pTempObj = new QStringList
		pTempObj.pObject = QTextBrowser_searchPaths(pObject)
		return pTempObj

	Func setOpenExternalLinks P1
		return QTextBrowser_setOpenExternalLinks(pObject,P1)

	Func setOpenLinks P1
		return QTextBrowser_setOpenLinks(pObject,P1)

	Func setSearchPaths P1
		return QTextBrowser_setSearchPaths(pObject,GetObjectPointerFromRingObject(P1))

	Func source 
		pTempObj = new QUrl
		pTempObj.pObject = QTextBrowser_source(pObject)
		return pTempObj

	Func setanchorClickedEvent P1
		return QTextBrowser_setanchorClickedEvent(pObject,P1)

	Func setbackwardAvailableEvent P1
		return QTextBrowser_setbackwardAvailableEvent(pObject,P1)

	Func setforwardAvailableEvent P1
		return QTextBrowser_setforwardAvailableEvent(pObject,P1)

	Func sethighlightedEvent P1
		return QTextBrowser_sethighlightedEvent(pObject,P1)

	Func sethistoryChangedEvent P1
		return QTextBrowser_sethistoryChangedEvent(pObject,P1)

	Func setsourceChangedEvent P1
		return QTextBrowser_setsourceChangedEvent(pObject,P1)

	Func getanchorClickedEvent 
		return QTextBrowser_getanchorClickedEvent(pObject)

	Func getbackwardAvailableEvent 
		return QTextBrowser_getbackwardAvailableEvent(pObject)

	Func getforwardAvailableEvent 
		return QTextBrowser_getforwardAvailableEvent(pObject)

	Func gethighlightedEvent 
		return QTextBrowser_gethighlightedEvent(pObject)

	Func gethistoryChangedEvent 
		return QTextBrowser_gethistoryChangedEvent(pObject)

	Func getsourceChangedEvent 
		return QTextBrowser_getsourceChangedEvent(pObject)

Class QStackedWidget from QFrame

	pObject

	Func init P1
		pObject = QStackedWidget_new(GetObjectPointerFromRingObject(P1))
		return self

	Func delete
		pObject = QStackedWidget_delete(pObject)

	Func ObjectPointer
		return pObject

	Func addWidget P1
		return QStackedWidget_addWidget(pObject,GetObjectPointerFromRingObject(P1))

	Func count 
		return QStackedWidget_count(pObject)

	Func currentIndex 
		return QStackedWidget_currentIndex(pObject)

	Func currentWidget 
		pTempObj = new QWidget
		pTempObj.pObject = QStackedWidget_currentWidget(pObject)
		return pTempObj

	Func indexOf P1
		return QStackedWidget_indexOf(pObject,GetObjectPointerFromRingObject(P1))

	Func insertWidget P1,P2
		return QStackedWidget_insertWidget(pObject,P1,GetObjectPointerFromRingObject(P2))

	Func removeWidget P1
		return QStackedWidget_removeWidget(pObject,GetObjectPointerFromRingObject(P1))

	Func widget P1
		pTempObj = new QWidget
		pTempObj.pObject = QStackedWidget_widget(pObject,P1)
		return pTempObj

	Func setCurrentIndex P1
		return QStackedWidget_setCurrentIndex(pObject,P1)

	Func setCurrentWidget P1
		return QStackedWidget_setCurrentWidget(pObject,GetObjectPointerFromRingObject(P1))

	Func setcurrentChangedEvent P1
		return QStackedWidget_setcurrentChangedEvent(pObject,P1)

	Func setwidgetRemovedEvent P1
		return QStackedWidget_setwidgetRemovedEvent(pObject,P1)

	Func getcurrentChangedEvent 
		return QStackedWidget_getcurrentChangedEvent(pObject)

	Func getwidgetRemovedEvent 
		return QStackedWidget_getwidgetRemovedEvent(pObject)

Class QCalendarWidget from QWidget

	pObject

	Func init P1
		pObject = QCalendarWidget_new(GetObjectPointerFromRingObject(P1))
		return self

	Func delete
		pObject = QCalendarWidget_delete(pObject)

	Func ObjectPointer
		return pObject

	Func dateEditAcceptDelay 
		return QCalendarWidget_dateEditAcceptDelay(pObject)

	Func dateTextFormat 
		return QCalendarWidget_dateTextFormat(pObject)

	Func dateTextFormat_2 P1
		pTempObj = new QTextCharFormat
		pTempObj.pObject = QCalendarWidget_dateTextFormat_2(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func firstDayOfWeek 
		return QCalendarWidget_firstDayOfWeek(pObject)

	Func headerTextFormat 
		pTempObj = new QTextCharFormat
		pTempObj.pObject = QCalendarWidget_headerTextFormat(pObject)
		return pTempObj

	Func horizontalHeaderFormat 
		return QCalendarWidget_horizontalHeaderFormat(pObject)

	Func isDateEditEnabled 
		return QCalendarWidget_isDateEditEnabled(pObject)

	Func isGridVisible 
		return QCalendarWidget_isGridVisible(pObject)

	Func isNavigationBarVisible 
		return QCalendarWidget_isNavigationBarVisible(pObject)

	Func maximumDate 
		pTempObj = new QDate
		pTempObj.pObject = QCalendarWidget_maximumDate(pObject)
		return pTempObj

	Func minimumDate 
		pTempObj = new QDate
		pTempObj.pObject = QCalendarWidget_minimumDate(pObject)
		return pTempObj

	Func monthShown 
		return QCalendarWidget_monthShown(pObject)

	Func selectedDate 
		pTempObj = new QDate
		pTempObj.pObject = QCalendarWidget_selectedDate(pObject)
		return pTempObj

	Func selectionMode 
		return QCalendarWidget_selectionMode(pObject)

	Func setDateEditAcceptDelay P1
		return QCalendarWidget_setDateEditAcceptDelay(pObject,P1)

	Func setDateEditEnabled P1
		return QCalendarWidget_setDateEditEnabled(pObject,P1)

	Func setDateTextFormat P1,P2
		return QCalendarWidget_setDateTextFormat(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2))

	Func setFirstDayOfWeek P1
		return QCalendarWidget_setFirstDayOfWeek(pObject,GetObjectPointerFromRingObject(P1))

	Func setHeaderTextFormat P1
		return QCalendarWidget_setHeaderTextFormat(pObject,GetObjectPointerFromRingObject(P1))

	Func setHorizontalHeaderFormat P1
		return QCalendarWidget_setHorizontalHeaderFormat(pObject,P1)

	Func setMaximumDate P1
		return QCalendarWidget_setMaximumDate(pObject,GetObjectPointerFromRingObject(P1))

	Func setMinimumDate P1
		return QCalendarWidget_setMinimumDate(pObject,GetObjectPointerFromRingObject(P1))

	Func setSelectionMode P1
		return QCalendarWidget_setSelectionMode(pObject,P1)

	Func setVerticalHeaderFormat P1
		return QCalendarWidget_setVerticalHeaderFormat(pObject,P1)

	Func setWeekdayTextFormat P1,P2
		return QCalendarWidget_setWeekdayTextFormat(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2))

	Func verticalHeaderFormat 
		return QCalendarWidget_verticalHeaderFormat(pObject)

	Func weekdayTextFormat P1
		pTempObj = new QTextCharFormat
		pTempObj.pObject = QCalendarWidget_weekdayTextFormat(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func yearShown 
		return QCalendarWidget_yearShown(pObject)

	Func setCurrentPage P1,P2
		return QCalendarWidget_setCurrentPage(pObject,P1,P2)

	Func setDateRange P1,P2
		return QCalendarWidget_setDateRange(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2))

	Func setGridVisible P1
		return QCalendarWidget_setGridVisible(pObject,P1)

	Func setNavigationBarVisible P1
		return QCalendarWidget_setNavigationBarVisible(pObject,P1)

	Func setSelectedDate P1
		return QCalendarWidget_setSelectedDate(pObject,GetObjectPointerFromRingObject(P1))

	Func showNextMonth 
		return QCalendarWidget_showNextMonth(pObject)

	Func showNextYear 
		return QCalendarWidget_showNextYear(pObject)

	Func showPreviousMonth 
		return QCalendarWidget_showPreviousMonth(pObject)

	Func showPreviousYear 
		return QCalendarWidget_showPreviousYear(pObject)

	Func showSelectedDate 
		return QCalendarWidget_showSelectedDate(pObject)

	Func showToday 
		return QCalendarWidget_showToday(pObject)

	Func setactivatedEvent P1
		return QCalendarWidget_setactivatedEvent(pObject,P1)

	Func setclickedEvent P1
		return QCalendarWidget_setclickedEvent(pObject,P1)

	Func setcurrentPageChangedEvent P1
		return QCalendarWidget_setcurrentPageChangedEvent(pObject,P1)

	Func setselectionChangedEvent P1
		return QCalendarWidget_setselectionChangedEvent(pObject,P1)

	Func getactivatedEvent 
		return QCalendarWidget_getactivatedEvent(pObject)

	Func getclickedEvent 
		return QCalendarWidget_getclickedEvent(pObject)

	Func getcurrentPageChangedEvent 
		return QCalendarWidget_getcurrentPageChangedEvent(pObject)

	Func getselectionChangedEvent 
		return QCalendarWidget_getselectionChangedEvent(pObject)

Class QTabBar from QWidget

	pObject

	Func init P1
		pObject = QTabBar_new(GetObjectPointerFromRingObject(P1))
		return self

	Func delete
		pObject = QTabBar_delete(pObject)

	Func ObjectPointer
		return pObject

	Func addTab P1
		return QTabBar_addTab(pObject,P1)

	Func addTab_2 P1,P2
		return QTabBar_addTab_2(pObject,GetObjectPointerFromRingObject(P1),P2)

	Func count 
		return QTabBar_count(pObject)

	Func currentIndex 
		return QTabBar_currentIndex(pObject)

	Func documentMode 
		return QTabBar_documentMode(pObject)

	Func drawBase 
		return QTabBar_drawBase(pObject)

	Func elideMode 
		return QTabBar_elideMode(pObject)

	Func expanding 
		return QTabBar_expanding(pObject)

	Func iconSize 
		pTempObj = new QSize
		pTempObj.pObject = QTabBar_iconSize(pObject)
		return pTempObj

	Func insertTab P1,P2
		return QTabBar_insertTab(pObject,P1,P2)

	Func insertTab_2 P1,P2,P3
		return QTabBar_insertTab_2(pObject,P1,GetObjectPointerFromRingObject(P2),P3)

	Func isMovable 
		return QTabBar_isMovable(pObject)

	Func isTabEnabled P1
		return QTabBar_isTabEnabled(pObject,P1)

	Func moveTab P1,P2
		return QTabBar_moveTab(pObject,P1,P2)

	Func removeTab P1
		return QTabBar_removeTab(pObject,P1)

	Func selectionBehaviorOnRemove 
		return QTabBar_selectionBehaviorOnRemove(pObject)

	Func setDocumentMode P1
		return QTabBar_setDocumentMode(pObject,P1)

	Func setDrawBase P1
		return QTabBar_setDrawBase(pObject,P1)

	Func setElideMode P1
		return QTabBar_setElideMode(pObject,P1)

	Func setExpanding P1
		return QTabBar_setExpanding(pObject,P1)

	Func setIconSize P1
		return QTabBar_setIconSize(pObject,GetObjectPointerFromRingObject(P1))

	Func setMovable P1
		return QTabBar_setMovable(pObject,P1)

	Func setSelectionBehaviorOnRemove P1
		return QTabBar_setSelectionBehaviorOnRemove(pObject,P1)

	Func setShape P1
		return QTabBar_setShape(pObject,P1)

	Func setTabButton P1,P2,P3
		return QTabBar_setTabButton(pObject,P1,P2,GetObjectPointerFromRingObject(P3))

	Func setTabData P1,P2
		return QTabBar_setTabData(pObject,P1,GetObjectPointerFromRingObject(P2))

	Func setTabEnabled P1,P2
		return QTabBar_setTabEnabled(pObject,P1,P2)

	Func setTabIcon P1,P2
		return QTabBar_setTabIcon(pObject,P1,GetObjectPointerFromRingObject(P2))

	Func setTabText P1,P2
		return QTabBar_setTabText(pObject,P1,P2)

	Func setTabTextColor P1,P2
		return QTabBar_setTabTextColor(pObject,P1,GetObjectPointerFromRingObject(P2))

	Func setTabToolTip P1,P2
		return QTabBar_setTabToolTip(pObject,P1,P2)

	Func setTabWhatsThis P1,P2
		return QTabBar_setTabWhatsThis(pObject,P1,P2)

	Func setTabsClosable P1
		return QTabBar_setTabsClosable(pObject,P1)

	Func setUsesScrollButtons P1
		return QTabBar_setUsesScrollButtons(pObject,P1)

	Func shape 
		return QTabBar_shape(pObject)

	Func tabAt P1
		return QTabBar_tabAt(pObject,GetObjectPointerFromRingObject(P1))

	Func tabButton P1,P2
		pTempObj = new QWidget
		pTempObj.pObject = QTabBar_tabButton(pObject,P1,P2)
		return pTempObj

	Func tabData P1
		pTempObj = new QVariant
		pTempObj.pObject = QTabBar_tabData(pObject,P1)
		return pTempObj

	Func tabIcon P1
		pTempObj = new QIcon
		pTempObj.pObject = QTabBar_tabIcon(pObject,P1)
		return pTempObj

	Func tabRect P1
		pTempObj = new QRect
		pTempObj.pObject = QTabBar_tabRect(pObject,P1)
		return pTempObj

	Func tabText P1
		return QTabBar_tabText(pObject,P1)

	Func tabTextColor P1
		pTempObj = new QColor
		pTempObj.pObject = QTabBar_tabTextColor(pObject,P1)
		return pTempObj

	Func tabToolTip P1
		return QTabBar_tabToolTip(pObject,P1)

	Func tabWhatsThis P1
		return QTabBar_tabWhatsThis(pObject,P1)

	Func tabsClosable 
		return QTabBar_tabsClosable(pObject)

	Func usesScrollButtons 
		return QTabBar_usesScrollButtons(pObject)

	Func setCurrentIndex P1
		return QTabBar_setCurrentIndex(pObject,P1)

	Func setcurrentChangedEvent P1
		return QTabBar_setcurrentChangedEvent(pObject,P1)

	Func settabCloseRequestedEvent P1
		return QTabBar_settabCloseRequestedEvent(pObject,P1)

	Func settabMovedEvent P1
		return QTabBar_settabMovedEvent(pObject,P1)

	Func getcurrentChangedEvent 
		return QTabBar_getcurrentChangedEvent(pObject)

	Func gettabCloseRequestedEvent 
		return QTabBar_gettabCloseRequestedEvent(pObject)

	Func gettabMovedEvent 
		return QTabBar_gettabMovedEvent(pObject)

Class QStyle from QObject

	pObject


	Func combinedLayoutSpacing P1,P2,P3,P4,P5
		return QStyle_combinedLayoutSpacing(GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2),P3,GetObjectPointerFromRingObject(P4),GetObjectPointerFromRingObject(P5))

	Func drawComplexControl P1,P2,P3,P4
		return QStyle_drawComplexControl(P1,GetObjectPointerFromRingObject(P2),GetObjectPointerFromRingObject(P3),GetObjectPointerFromRingObject(P4))

	Func drawControl P1,P2,P3,P4
		return QStyle_drawControl(P1,GetObjectPointerFromRingObject(P2),GetObjectPointerFromRingObject(P3),GetObjectPointerFromRingObject(P4))

	Func drawItemPixmap P1,P2,P3,P4
		return QStyle_drawItemPixmap(GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2),P3,GetObjectPointerFromRingObject(P4))

	Func drawItemText P1,P2,P3,P4,P5,P6,P7
		return QStyle_drawItemText(GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2),P3,GetObjectPointerFromRingObject(P4),P5,P6,P7)

	Func drawPrimitive P1,P2,P3,P4
		return QStyle_drawPrimitive(P1,GetObjectPointerFromRingObject(P2),GetObjectPointerFromRingObject(P3),GetObjectPointerFromRingObject(P4))

	Func generatedIconPixmap P1,P2,P3
		pTempObj = new QPixmap
		pTempObj.pObject = QStyle_generatedIconPixmap(GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2),GetObjectPointerFromRingObject(P3))
		return pTempObj

	Func hitTestComplexControl P1,P2,P3,P4
		return QStyle_hitTestComplexControl(P1,GetObjectPointerFromRingObject(P2),GetObjectPointerFromRingObject(P3),GetObjectPointerFromRingObject(P4))

	Func itemPixmapRect P1,P2,P3
		pTempObj = new QRect
		pTempObj.pObject = QStyle_itemPixmapRect(GetObjectPointerFromRingObject(P1),P2,GetObjectPointerFromRingObject(P3))
		return pTempObj

	Func itemTextRect P1,P2,P3,P4,P5
		pTempObj = new QRect
		pTempObj.pObject = QStyle_itemTextRect(GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2),P3,P4,P5)
		return pTempObj

	Func layoutSpacing P1,P2,P3,P4,P5
		return QStyle_layoutSpacing(GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2),P3,GetObjectPointerFromRingObject(P4),GetObjectPointerFromRingObject(P5))

	Func pixelMetric P1
		return QStyle_pixelMetric(P1)

	Func pixelMetric_2 P1,P2,P3
		return QStyle_pixelMetric_2(P1,GetObjectPointerFromRingObject(P2),GetObjectPointerFromRingObject(P3))

	Func polish P1
		return QStyle_polish(GetObjectPointerFromRingObject(P1))

	Func polish_2 P1
		return QStyle_polish_2(GetObjectPointerFromRingObject(P1))

	Func polish_3 P1
		return QStyle_polish_3(GetObjectPointerFromRingObject(P1))

	Func proxy 
		return QStyle_proxy()

	Func sizeFromContents P1,P2,P3,P4
		pTempObj = new QSize
		pTempObj.pObject = QStyle_sizeFromContents(P1,GetObjectPointerFromRingObject(P2),GetObjectPointerFromRingObject(P3),GetObjectPointerFromRingObject(P4))
		return pTempObj

	Func standardIcon P1,P2,P3
		pTempObj = new QIcon
		pTempObj.pObject = QStyle_standardIcon(P1,GetObjectPointerFromRingObject(P2),GetObjectPointerFromRingObject(P3))
		return pTempObj

	Func standardPalette 
		return QStyle_standardPalette()

	Func styleHint P1,P2,P3,P4
		return QStyle_styleHint(P1,GetObjectPointerFromRingObject(P2),GetObjectPointerFromRingObject(P3),GetObjectPointerFromRingObject(P4))

	Func subControlRect P1,P2,P3,P4
		pTempObj = new QRect
		pTempObj.pObject = QStyle_subControlRect(P1,GetObjectPointerFromRingObject(P2),P3,GetObjectPointerFromRingObject(P4))
		return pTempObj

	Func subElementRect P1,P2,P3
		pTempObj = new QRect
		pTempObj.pObject = QStyle_subElementRect(P1,GetObjectPointerFromRingObject(P2),GetObjectPointerFromRingObject(P3))
		return pTempObj

	Func unpolish P1
		return QStyle_unpolish(GetObjectPointerFromRingObject(P1))

	Func unpolish_2 P1
		return QStyle_unpolish_2(GetObjectPointerFromRingObject(P1))

	Func alignedRect P1,P2,P3,P4
		pTempObj = new QRect
		pTempObj.pObject = QStyle_alignedRect(P1,P2,GetObjectPointerFromRingObject(P3),GetObjectPointerFromRingObject(P4))
		return pTempObj

	Func sliderPositionFromValue P1,P2,P3,P4,P5
		return QStyle_sliderPositionFromValue(P1,P2,P3,P4,P5)

	Func sliderValueFromPosition P1,P2,P3,P4,P5
		return QStyle_sliderValueFromPosition(P1,P2,P3,P4,P5)

	Func visualAlignment P1,P2
		return QStyle_visualAlignment(P1,P2)

	Func visualPos P1,P2,P3
		pTempObj = new QPoint
		pTempObj.pObject = QStyle_visualPos(P1,GetObjectPointerFromRingObject(P2),GetObjectPointerFromRingObject(P3))
		return pTempObj

	Func visualRect P1,P2,P3
		pTempObj = new QRect
		pTempObj.pObject = QStyle_visualRect(P1,GetObjectPointerFromRingObject(P2),GetObjectPointerFromRingObject(P3))
		return pTempObj

Class QGraphicsView from QAbstractScrollArea

	pObject

	Func init P1
		pObject = QGraphicsView_new(GetObjectPointerFromRingObject(P1))
		return self

	Func delete
		pObject = QGraphicsView_delete(pObject)

	Func ObjectPointer
		return pObject

	Func alignment 
		return QGraphicsView_alignment(pObject)

	Func backgroundBrush 
		pTempObj = new QBrush
		pTempObj.pObject = QGraphicsView_backgroundBrush(pObject)
		return pTempObj

	Func cacheMode 
		return QGraphicsView_cacheMode(pObject)

	Func centerOn P1
		return QGraphicsView_centerOn(pObject,GetObjectPointerFromRingObject(P1))

	Func centerOn_2 P1,P2
		return QGraphicsView_centerOn_2(pObject,P1,P2)

	Func centerOn_3 P1
		return QGraphicsView_centerOn_3(pObject,GetObjectPointerFromRingObject(P1))

	Func dragMode 
		return QGraphicsView_dragMode(pObject)

	Func ensureVisible P1,P2,P3
		return QGraphicsView_ensureVisible(pObject,GetObjectPointerFromRingObject(P1),P2,P3)

	Func ensureVisible_2 P1,P2,P3,P4,P5,P6
		return QGraphicsView_ensureVisible_2(pObject,P1,P2,P3,P4,P5,P6)

	Func ensureVisible_3 P1,P2,P3
		return QGraphicsView_ensureVisible_3(pObject,GetObjectPointerFromRingObject(P1),P2,P3)

	Func fitInView P1,P2
		return QGraphicsView_fitInView(pObject,GetObjectPointerFromRingObject(P1),P2)

	Func fitInView_2 P1,P2,P3,P4,P5
		return QGraphicsView_fitInView_2(pObject,P1,P2,P3,P4,P5)

	Func fitInView_3 P1,P2
		return QGraphicsView_fitInView_3(pObject,GetObjectPointerFromRingObject(P1),P2)

	Func foregroundBrush 
		pTempObj = new QBrush
		pTempObj.pObject = QGraphicsView_foregroundBrush(pObject)
		return pTempObj

	Func isInteractive 
		return QGraphicsView_isInteractive(pObject)

	Func isTransformed 
		return QGraphicsView_isTransformed(pObject)

	Func itemAt P1
		pTempObj = new QGraphicsItem
		pTempObj.pObject = QGraphicsView_itemAt(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func itemAt_2 P1,P2
		pTempObj = new QGraphicsItem
		pTempObj.pObject = QGraphicsView_itemAt_2(pObject,P1,P2)
		return pTempObj

	Func items 
		return QGraphicsView_items(pObject)

	Func items_2 P1
		return QGraphicsView_items_2(pObject,GetObjectPointerFromRingObject(P1))

	Func items_3 P1,P2
		return QGraphicsView_items_3(pObject,P1,P2)

	Func items_4 P1,P2
		return QGraphicsView_items_4(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2))

	Func items_5 P1,P2,P3,P4,P5
		return QGraphicsView_items_5(pObject,P1,P2,P3,P4,GetObjectPointerFromRingObject(P5))

	Func items_6 P1,P2
		return QGraphicsView_items_6(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2))

	Func items_7 P1,P2
		return QGraphicsView_items_7(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2))

	Func mapFromScene P1
		pTempObj = new QPoint
		pTempObj.pObject = QGraphicsView_mapFromScene(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func mapFromScene_2 P1
		return QGraphicsView_mapFromScene_2(pObject,GetObjectPointerFromRingObject(P1))

	Func mapFromScene_3 P1
		return QGraphicsView_mapFromScene_3(pObject,GetObjectPointerFromRingObject(P1))

	Func mapFromScene_4 P1
		pTempObj = new QPainterPath
		pTempObj.pObject = QGraphicsView_mapFromScene_4(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func mapFromScene_5 P1,P2
		pTempObj = new QPoint
		pTempObj.pObject = QGraphicsView_mapFromScene_5(pObject,P1,P2)
		return pTempObj

	Func mapFromScene_6 P1,P2,P3,P4
		return QGraphicsView_mapFromScene_6(pObject,P1,P2,P3,P4)

	Func mapToScene P1
		pTempObj = new QPointF
		pTempObj.pObject = QGraphicsView_mapToScene(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func mapToScene_2 P1
		return QGraphicsView_mapToScene_2(pObject,GetObjectPointerFromRingObject(P1))

	Func mapToScene_3 P1
		return QGraphicsView_mapToScene_3(pObject,GetObjectPointerFromRingObject(P1))

	Func mapToScene_4 P1
		pTempObj = new QPainterPath
		pTempObj.pObject = QGraphicsView_mapToScene_4(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func mapToScene_5 P1,P2
		pTempObj = new QPointF
		pTempObj.pObject = QGraphicsView_mapToScene_5(pObject,P1,P2)
		return pTempObj

	Func mapToScene_6 P1,P2,P3,P4
		return QGraphicsView_mapToScene_6(pObject,P1,P2,P3,P4)

	Func optimizationFlags 
		return QGraphicsView_optimizationFlags(pObject)

	Func render P1,P2,P3,P4
		return QGraphicsView_render(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2),GetObjectPointerFromRingObject(P3),P4)

	Func renderHints 
		return QGraphicsView_renderHints(pObject)

	Func resetCachedContent 
		return QGraphicsView_resetCachedContent(pObject)

	Func resetTransform 
		return QGraphicsView_resetTransform(pObject)

	Func resizeAnchor 
		return QGraphicsView_resizeAnchor(pObject)

	Func rotate P1
		return QGraphicsView_rotate(pObject,P1)

	Func rubberBandRect 
		pTempObj = new QRect
		pTempObj.pObject = QGraphicsView_rubberBandRect(pObject)
		return pTempObj

	Func rubberBandSelectionMode 
		return QGraphicsView_rubberBandSelectionMode(pObject)

	Func scale P1,P2
		return QGraphicsView_scale(pObject,P1,P2)

	Func scene 
		pTempObj = new QGraphicsScene
		pTempObj.pObject = QGraphicsView_scene(pObject)
		return pTempObj

	Func sceneRect 
		pTempObj = new QRectF
		pTempObj.pObject = QGraphicsView_sceneRect(pObject)
		return pTempObj

	Func setAlignment P1
		return QGraphicsView_setAlignment(pObject,P1)

	Func setBackgroundBrush P1
		return QGraphicsView_setBackgroundBrush(pObject,GetObjectPointerFromRingObject(P1))

	Func setCacheMode P1
		return QGraphicsView_setCacheMode(pObject,P1)

	Func setDragMode P1
		return QGraphicsView_setDragMode(pObject,P1)

	Func setForegroundBrush P1
		return QGraphicsView_setForegroundBrush(pObject,GetObjectPointerFromRingObject(P1))

	Func setInteractive P1
		return QGraphicsView_setInteractive(pObject,P1)

	Func setOptimizationFlag P1,P2
		return QGraphicsView_setOptimizationFlag(pObject,P1,P2)

	Func setOptimizationFlags P1
		return QGraphicsView_setOptimizationFlags(pObject,P1)

	Func setRenderHint P1,P2
		return QGraphicsView_setRenderHint(pObject,P1,P2)

	Func setRenderHints P1
		return QGraphicsView_setRenderHints(pObject,GetObjectPointerFromRingObject(P1))

	Func setResizeAnchor P1
		return QGraphicsView_setResizeAnchor(pObject,P1)

	Func setRubberBandSelectionMode P1
		return QGraphicsView_setRubberBandSelectionMode(pObject,GetObjectPointerFromRingObject(P1))

	Func setScene P1
		return QGraphicsView_setScene(pObject,GetObjectPointerFromRingObject(P1))

	Func setSceneRect P1
		return QGraphicsView_setSceneRect(pObject,GetObjectPointerFromRingObject(P1))

	Func setSceneRect_2 P1,P2,P3,P4
		return QGraphicsView_setSceneRect_2(pObject,P1,P2,P3,P4)

	Func setTransform P1,P2
		return QGraphicsView_setTransform(pObject,GetObjectPointerFromRingObject(P1),P2)

	Func setTransformationAnchor P1
		return QGraphicsView_setTransformationAnchor(pObject,P1)

	Func setViewportUpdateMode P1
		return QGraphicsView_setViewportUpdateMode(pObject,P1)

	Func shear P1,P2
		return QGraphicsView_shear(pObject,P1,P2)

	Func transform 
		return QGraphicsView_transform(pObject)

	Func transformationAnchor 
		return QGraphicsView_transformationAnchor(pObject)

	Func translate P1,P2
		return QGraphicsView_translate(pObject,P1,P2)

	Func viewportTransform 
		return QGraphicsView_viewportTransform(pObject)

	Func viewportUpdateMode 
		return QGraphicsView_viewportUpdateMode(pObject)

	Func invalidateScene P1,P2
		return QGraphicsView_invalidateScene(pObject,GetObjectPointerFromRingObject(P1),P2)

	Func updateScene P1
		return QGraphicsView_updateScene(pObject,GetObjectPointerFromRingObject(P1))

	Func updateSceneRect P1
		return QGraphicsView_updateSceneRect(pObject,GetObjectPointerFromRingObject(P1))

	Func setrubberBandChangedEvent P1
		return QGraphicsView_setrubberBandChangedEvent(pObject,P1)

	Func getrubberBandChangedEvent 
		return QGraphicsView_getrubberBandChangedEvent(pObject)

Class QGraphicsScene from QObject

	pObject

	Func init P1
		pObject = QGraphicsScene_new(GetObjectPointerFromRingObject(P1))
		return self

	Func delete
		pObject = QGraphicsScene_delete(pObject)

	Func ObjectPointer
		return pObject

	Func activePanel 
		pTempObj = new QGraphicsItem
		pTempObj.pObject = QGraphicsScene_activePanel(pObject)
		return pTempObj

	Func activeWindow 
		pTempObj = new QGraphicsWidget
		pTempObj.pObject = QGraphicsScene_activeWindow(pObject)
		return pTempObj

	Func addEllipse P1,P2,P3
		pTempObj = new QGraphicsEllipseItem
		pTempObj.pObject = QGraphicsScene_addEllipse(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2),GetObjectPointerFromRingObject(P3))
		return pTempObj

	Func addEllipse_2 P1,P2,P3,P4,P5,P6
		pTempObj = new QGraphicsEllipseItem
		pTempObj.pObject = QGraphicsScene_addEllipse_2(pObject,P1,P2,P3,P4,GetObjectPointerFromRingObject(P5),GetObjectPointerFromRingObject(P6))
		return pTempObj

	Func addItem P1
		return QGraphicsScene_addItem(pObject,GetObjectPointerFromRingObject(P1))

	Func addLine P1,P2
		pTempObj = new QGraphicsLineItem
		pTempObj.pObject = QGraphicsScene_addLine(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2))
		return pTempObj

	Func addLine_2 P1,P2,P3,P4,P5
		pTempObj = new QGraphicsLineItem
		pTempObj.pObject = QGraphicsScene_addLine_2(pObject,P1,P2,P3,P4,GetObjectPointerFromRingObject(P5))
		return pTempObj

	Func addPath P1,P2,P3
		pTempObj = new QGraphicsPathItem
		pTempObj.pObject = QGraphicsScene_addPath(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2),GetObjectPointerFromRingObject(P3))
		return pTempObj

	Func addPixmap P1
		pTempObj = new QGraphicsPixmapItem
		pTempObj.pObject = QGraphicsScene_addPixmap(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func addPolygon P1,P2,P3
		pTempObj = new QGraphicsPolygonItem
		pTempObj.pObject = QGraphicsScene_addPolygon(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2),GetObjectPointerFromRingObject(P3))
		return pTempObj

	Func addRect P1,P2,P3
		pTempObj = new QGraphicsRectItem
		pTempObj.pObject = QGraphicsScene_addRect(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2),GetObjectPointerFromRingObject(P3))
		return pTempObj

	Func addRect_2 P1,P2,P3,P4,P5,P6
		pTempObj = new QGraphicsRectItem
		pTempObj.pObject = QGraphicsScene_addRect_2(pObject,P1,P2,P3,P4,GetObjectPointerFromRingObject(P5),GetObjectPointerFromRingObject(P6))
		return pTempObj

	Func addSimpleText P1,P2
		pTempObj = new QGraphicsSimpleTextItem
		pTempObj.pObject = QGraphicsScene_addSimpleText(pObject,P1,GetObjectPointerFromRingObject(P2))
		return pTempObj

	Func addText P1,P2
		pTempObj = new QGraphicsTextItem
		pTempObj.pObject = QGraphicsScene_addText(pObject,P1,GetObjectPointerFromRingObject(P2))
		return pTempObj

	Func addWidget P1,P2
		pTempObj = new QGraphicsProxyWidget
		pTempObj.pObject = QGraphicsScene_addWidget(pObject,GetObjectPointerFromRingObject(P1),P2)
		return pTempObj

	Func backgroundBrush 
		pTempObj = new QBrush
		pTempObj.pObject = QGraphicsScene_backgroundBrush(pObject)
		return pTempObj

	Func bspTreeDepth 
		return QGraphicsScene_bspTreeDepth(pObject)

	Func clearFocus 
		return QGraphicsScene_clearFocus(pObject)

	Func collidingItems P1,P2
		return QGraphicsScene_collidingItems(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2))

	Func createItemGroup P1
		pTempObj = new QGraphicsItemGroup
		pTempObj.pObject = QGraphicsScene_createItemGroup(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func destroyItemGroup P1
		return QGraphicsScene_destroyItemGroup(pObject,GetObjectPointerFromRingObject(P1))

	Func focusItem 
		pTempObj = new QGraphicsItem
		pTempObj.pObject = QGraphicsScene_focusItem(pObject)
		return pTempObj

	Func font 
		pTempObj = new QFont
		pTempObj.pObject = QGraphicsScene_font(pObject)
		return pTempObj

	Func foregroundBrush 
		pTempObj = new QBrush
		pTempObj.pObject = QGraphicsScene_foregroundBrush(pObject)
		return pTempObj

	Func hasFocus 
		return QGraphicsScene_hasFocus(pObject)

	Func height 
		return QGraphicsScene_height(pObject)

	Func inputMethodQuery P1
		pTempObj = new QVariant
		pTempObj.pObject = QGraphicsScene_inputMethodQuery(pObject,P1)
		return pTempObj

	Func invalidate P1,P2,P3,P4,P5
		return QGraphicsScene_invalidate(pObject,P1,P2,P3,P4,P5)

	Func isActive 
		return QGraphicsScene_isActive(pObject)

	Func itemAt P1,P2
		pTempObj = new QGraphicsItem
		pTempObj.pObject = QGraphicsScene_itemAt(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2))
		return pTempObj

	Func itemAt_2 P1,P2,P3
		pTempObj = new QGraphicsItem
		pTempObj.pObject = QGraphicsScene_itemAt_2(pObject,P1,P2,GetObjectPointerFromRingObject(P3))
		return pTempObj

	Func itemIndexMethod 
		return QGraphicsScene_itemIndexMethod(pObject)

	Func items P1
		return QGraphicsScene_items(pObject,P1)

	Func items_2 P1,P2,P3,P4
		return QGraphicsScene_items_2(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2),P3,GetObjectPointerFromRingObject(P4))

	Func items_3 P1,P2,P3,P4
		return QGraphicsScene_items_3(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2),P3,GetObjectPointerFromRingObject(P4))

	Func items_4 P1,P2,P3,P4
		return QGraphicsScene_items_4(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2),P3,GetObjectPointerFromRingObject(P4))

	Func items_5 P1,P2,P3,P4
		return QGraphicsScene_items_5(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2),P3,GetObjectPointerFromRingObject(P4))

	Func items_6 P1,P2,P3,P4,P5,P6,P7
		return QGraphicsScene_items_6(pObject,P1,P2,P3,P4,GetObjectPointerFromRingObject(P5),P6,GetObjectPointerFromRingObject(P7))

	Func itemsBoundingRect 
		pTempObj = new QRectF
		pTempObj.pObject = QGraphicsScene_itemsBoundingRect(pObject)
		return pTempObj

	Func minimumRenderSize 
		return QGraphicsScene_minimumRenderSize(pObject)

	Func mouseGrabberItem 
		pTempObj = new QGraphicsItem
		pTempObj.pObject = QGraphicsScene_mouseGrabberItem(pObject)
		return pTempObj

	Func palette 
		return QGraphicsScene_palette(pObject)

	Func removeItem P1
		return QGraphicsScene_removeItem(pObject,GetObjectPointerFromRingObject(P1))

	Func render P1,P2,P3,P4
		return QGraphicsScene_render(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2),GetObjectPointerFromRingObject(P3),P4)

	Func sceneRect 
		pTempObj = new QRectF
		pTempObj.pObject = QGraphicsScene_sceneRect(pObject)
		return pTempObj

	Func selectedItems 
		return QGraphicsScene_selectedItems(pObject)

	Func selectionArea 
		pTempObj = new QPainterPath
		pTempObj.pObject = QGraphicsScene_selectionArea(pObject)
		return pTempObj

	Func sendEvent P1,P2
		return QGraphicsScene_sendEvent(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2))

	Func setActivePanel P1
		return QGraphicsScene_setActivePanel(pObject,GetObjectPointerFromRingObject(P1))

	Func setActiveWindow P1
		return QGraphicsScene_setActiveWindow(pObject,GetObjectPointerFromRingObject(P1))

	Func setBackgroundBrush P1
		return QGraphicsScene_setBackgroundBrush(pObject,GetObjectPointerFromRingObject(P1))

	Func setBspTreeDepth P1
		return QGraphicsScene_setBspTreeDepth(pObject,P1)

	Func setFocus P1
		return QGraphicsScene_setFocus(pObject,P1)

	Func setFocusItem P1,P2
		return QGraphicsScene_setFocusItem(pObject,GetObjectPointerFromRingObject(P1),P2)

	Func setFont P1
		return QGraphicsScene_setFont(pObject,GetObjectPointerFromRingObject(P1))

	Func setForegroundBrush P1
		return QGraphicsScene_setForegroundBrush(pObject,GetObjectPointerFromRingObject(P1))

	Func setItemIndexMethod P1
		return QGraphicsScene_setItemIndexMethod(pObject,P1)

	Func setMinimumRenderSize P1
		return QGraphicsScene_setMinimumRenderSize(pObject,P1)

	Func setPalette P1
		return QGraphicsScene_setPalette(pObject,GetObjectPointerFromRingObject(P1))

	Func setSceneRect P1
		return QGraphicsScene_setSceneRect(pObject,GetObjectPointerFromRingObject(P1))

	Func setSceneRect_2 P1,P2,P3,P4
		return QGraphicsScene_setSceneRect_2(pObject,P1,P2,P3,P4)

	Func setSelectionArea P1,P2
		return QGraphicsScene_setSelectionArea(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2))

	Func setSelectionArea_2 P1,P2,P3
		return QGraphicsScene_setSelectionArea_2(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2),GetObjectPointerFromRingObject(P3))

	Func setSelectionArea_3 P1,P2,P3,P4
		return QGraphicsScene_setSelectionArea_3(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2),GetObjectPointerFromRingObject(P3),GetObjectPointerFromRingObject(P4))

	Func setStickyFocus P1
		return QGraphicsScene_setStickyFocus(pObject,P1)

	Func setStyle P1
		return QGraphicsScene_setStyle(pObject,GetObjectPointerFromRingObject(P1))

	Func stickyFocus 
		return QGraphicsScene_stickyFocus(pObject)

	Func style 
		return QGraphicsScene_style(pObject)

	Func update P1,P2,P3,P4
		return QGraphicsScene_update(pObject,P1,P2,P3,P4)

	Func views 
		return QGraphicsScene_views(pObject)

	Func width 
		return QGraphicsScene_width(pObject)

	Func advance 
		return QGraphicsScene_advance(pObject)

	Func clear 
		return QGraphicsScene_clear(pObject)

	Func clearSelection 
		return QGraphicsScene_clearSelection(pObject)

	Func invalidate_2 P1,P2
		return QGraphicsScene_invalidate_2(pObject,GetObjectPointerFromRingObject(P1),P2)

	Func update_2 P1
		return QGraphicsScene_update_2(pObject,GetObjectPointerFromRingObject(P1))

	Func setchangedEvent P1
		return QGraphicsScene_setchangedEvent(pObject,P1)

	Func setfocusItemChangedEvent P1
		return QGraphicsScene_setfocusItemChangedEvent(pObject,P1)

	Func setsceneRectChangedEvent P1
		return QGraphicsScene_setsceneRectChangedEvent(pObject,P1)

	Func setselectionChangedEvent P1
		return QGraphicsScene_setselectionChangedEvent(pObject,P1)

	Func getchangedEvent 
		return QGraphicsScene_getchangedEvent(pObject)

	Func getfocusItemChangedEvent 
		return QGraphicsScene_getfocusItemChangedEvent(pObject)

	Func getsceneRectChangedEvent 
		return QGraphicsScene_getsceneRectChangedEvent(pObject)

	Func getselectionChangedEvent 
		return QGraphicsScene_getselectionChangedEvent(pObject)

Class QGraphicsItem

	pObject

	Func init P1
		pObject = QGraphicsItem_new(GetObjectPointerFromRingObject(P1))
		return self

	Func delete
		pObject = QGraphicsItem_delete(pObject)

	Func ObjectPointer
		return pObject

	Func acceptDrops 
		return QGraphicsItem_acceptDrops(pObject)

	Func acceptHoverEvents 
		return QGraphicsItem_acceptHoverEvents(pObject)

	Func acceptTouchEvents 
		return QGraphicsItem_acceptTouchEvents(pObject)

	Func acceptedMouseButtons 
		return QGraphicsItem_acceptedMouseButtons(pObject)

	Func advance P1
		return QGraphicsItem_advance(pObject,P1)

	Func boundingRect 
		pTempObj = new QRectF
		pTempObj.pObject = QGraphicsItem_boundingRect(pObject)
		return pTempObj

	Func boundingRegion P1
		pTempObj = new QRegion
		pTempObj.pObject = QGraphicsItem_boundingRegion(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func boundingRegionGranularity 
		return QGraphicsItem_boundingRegionGranularity(pObject)

	Func cacheMode 
		return QGraphicsItem_cacheMode(pObject)

	Func childItems 
		return QGraphicsItem_childItems(pObject)

	Func childrenBoundingRect 
		pTempObj = new QRectF
		pTempObj.pObject = QGraphicsItem_childrenBoundingRect(pObject)
		return pTempObj

	Func clearFocus 
		return QGraphicsItem_clearFocus(pObject)

	Func clipPath 
		pTempObj = new QPainterPath
		pTempObj.pObject = QGraphicsItem_clipPath(pObject)
		return pTempObj

	Func collidesWithItem P1,P2
		return QGraphicsItem_collidesWithItem(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2))

	Func collidesWithPath P1,P2
		return QGraphicsItem_collidesWithPath(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2))

	Func collidingItems P1
		return QGraphicsItem_collidingItems(pObject,GetObjectPointerFromRingObject(P1))

	Func commonAncestorItem P1
		pTempObj = new QGraphicsItem
		pTempObj.pObject = QGraphicsItem_commonAncestorItem(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func contains P1
		return QGraphicsItem_contains(pObject,GetObjectPointerFromRingObject(P1))

	Func cursor 
		pTempObj = new QCursor
		pTempObj.pObject = QGraphicsItem_cursor(pObject)
		return pTempObj

	Func data P1
		pTempObj = new QVariant
		pTempObj.pObject = QGraphicsItem_data(pObject,P1)
		return pTempObj

	Func deviceTransform P1
		return QGraphicsItem_deviceTransform(pObject,GetObjectPointerFromRingObject(P1))

	Func effectiveOpacity 
		return QGraphicsItem_effectiveOpacity(pObject)

	Func ensureVisible P1,P2,P3
		return QGraphicsItem_ensureVisible(pObject,GetObjectPointerFromRingObject(P1),P2,P3)

	Func ensureVisible_2 P1,P2,P3,P4,P5,P6
		return QGraphicsItem_ensureVisible_2(pObject,P1,P2,P3,P4,P5,P6)

	Func filtersChildEvents 
		return QGraphicsItem_filtersChildEvents(pObject)

	Func flags 
		return QGraphicsItem_flags(pObject)

	Func focusItem 
		pTempObj = new QGraphicsItem
		pTempObj.pObject = QGraphicsItem_focusItem(pObject)
		return pTempObj

	Func focusProxy 
		pTempObj = new QGraphicsItem
		pTempObj.pObject = QGraphicsItem_focusProxy(pObject)
		return pTempObj

	Func grabKeyboard 
		return QGraphicsItem_grabKeyboard(pObject)

	Func grabMouse 
		return QGraphicsItem_grabMouse(pObject)

	Func graphicsEffect 
		pTempObj = new QGraphicsEffect
		pTempObj.pObject = QGraphicsItem_graphicsEffect(pObject)
		return pTempObj

	Func group 
		pTempObj = new QGraphicsItemGroup
		pTempObj.pObject = QGraphicsItem_group(pObject)
		return pTempObj

	Func hasCursor 
		return QGraphicsItem_hasCursor(pObject)

	Func hasFocus 
		return QGraphicsItem_hasFocus(pObject)

	Func hide 
		return QGraphicsItem_hide(pObject)

	Func inputMethodHints 
		return QGraphicsItem_inputMethodHints(pObject)

	Func installSceneEventFilter P1
		return QGraphicsItem_installSceneEventFilter(pObject,GetObjectPointerFromRingObject(P1))

	Func isActive 
		return QGraphicsItem_isActive(pObject)

	Func isAncestorOf P1
		return QGraphicsItem_isAncestorOf(pObject,GetObjectPointerFromRingObject(P1))

	Func isClipped 
		return QGraphicsItem_isClipped(pObject)

	Func isEnabled 
		return QGraphicsItem_isEnabled(pObject)

	Func isObscured P1
		return QGraphicsItem_isObscured(pObject,GetObjectPointerFromRingObject(P1))

	Func isObscured_2 P1,P2,P3,P4
		return QGraphicsItem_isObscured_2(pObject,P1,P2,P3,P4)

	Func isObscuredBy P1
		return QGraphicsItem_isObscuredBy(pObject,GetObjectPointerFromRingObject(P1))

	Func isPanel 
		return QGraphicsItem_isPanel(pObject)

	Func isSelected 
		return QGraphicsItem_isSelected(pObject)

	Func isUnderMouse 
		return QGraphicsItem_isUnderMouse(pObject)

	Func isVisible 
		return QGraphicsItem_isVisible(pObject)

	Func isVisibleTo P1
		return QGraphicsItem_isVisibleTo(pObject,GetObjectPointerFromRingObject(P1))

	Func isWidget 
		return QGraphicsItem_isWidget(pObject)

	Func isWindow 
		return QGraphicsItem_isWindow(pObject)

	Func itemTransform P1,P2
		return QGraphicsItem_itemTransform(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2))

	Func mapFromItem P1,P2
		pTempObj = new QPointF
		pTempObj.pObject = QGraphicsItem_mapFromItem(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2))
		return pTempObj

	Func mapFromItem_2 P1,P2
		return QGraphicsItem_mapFromItem_2(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2))

	Func mapFromItem_3 P1,P2
		return QGraphicsItem_mapFromItem_3(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2))

	Func mapFromItem_4 P1,P2
		pTempObj = new QPainterPath
		pTempObj.pObject = QGraphicsItem_mapFromItem_4(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2))
		return pTempObj

	Func mapFromItem_5 P1,P2,P3
		pTempObj = new QPointF
		pTempObj.pObject = QGraphicsItem_mapFromItem_5(pObject,GetObjectPointerFromRingObject(P1),P2,P3)
		return pTempObj

	Func mapFromItem_6 P1,P2,P3,P4,P5
		return QGraphicsItem_mapFromItem_6(pObject,GetObjectPointerFromRingObject(P1),P2,P3,P4,P5)

	Func mapFromParent P1
		pTempObj = new QPointF
		pTempObj.pObject = QGraphicsItem_mapFromParent(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func mapFromParent_2 P1
		return QGraphicsItem_mapFromParent_2(pObject,GetObjectPointerFromRingObject(P1))

	Func mapFromParent_3 P1
		return QGraphicsItem_mapFromParent_3(pObject,GetObjectPointerFromRingObject(P1))

	Func mapFromParent_4 P1
		pTempObj = new QPainterPath
		pTempObj.pObject = QGraphicsItem_mapFromParent_4(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func mapFromParent_5 P1,P2
		pTempObj = new QPointF
		pTempObj.pObject = QGraphicsItem_mapFromParent_5(pObject,P1,P2)
		return pTempObj

	Func mapFromParent_6 P1,P2,P3,P4
		return QGraphicsItem_mapFromParent_6(pObject,P1,P2,P3,P4)

	Func mapFromScene P1
		pTempObj = new QPointF
		pTempObj.pObject = QGraphicsItem_mapFromScene(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func mapFromScene_2 P1
		return QGraphicsItem_mapFromScene_2(pObject,GetObjectPointerFromRingObject(P1))

	Func mapFromScene_3 P1
		return QGraphicsItem_mapFromScene_3(pObject,GetObjectPointerFromRingObject(P1))

	Func mapFromScene_4 P1
		pTempObj = new QPainterPath
		pTempObj.pObject = QGraphicsItem_mapFromScene_4(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func mapFromScene_5 P1,P2
		pTempObj = new QPointF
		pTempObj.pObject = QGraphicsItem_mapFromScene_5(pObject,P1,P2)
		return pTempObj

	Func mapFromScene_6 P1,P2,P3,P4
		return QGraphicsItem_mapFromScene_6(pObject,P1,P2,P3,P4)

	Func mapRectFromItem P1,P2
		pTempObj = new QRectF
		pTempObj.pObject = QGraphicsItem_mapRectFromItem(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2))
		return pTempObj

	Func mapRectFromItem_2 P1,P2,P3,P4,P5
		pTempObj = new QRectF
		pTempObj.pObject = QGraphicsItem_mapRectFromItem_2(pObject,GetObjectPointerFromRingObject(P1),P2,P3,P4,P5)
		return pTempObj

	Func mapRectFromParent P1
		pTempObj = new QRectF
		pTempObj.pObject = QGraphicsItem_mapRectFromParent(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func mapRectFromParent_2 P1,P2,P3,P4
		pTempObj = new QRectF
		pTempObj.pObject = QGraphicsItem_mapRectFromParent_2(pObject,P1,P2,P3,P4)
		return pTempObj

	Func mapRectFromScene P1
		pTempObj = new QRectF
		pTempObj.pObject = QGraphicsItem_mapRectFromScene(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func mapRectFromScene_2 P1,P2,P3,P4
		pTempObj = new QRectF
		pTempObj.pObject = QGraphicsItem_mapRectFromScene_2(pObject,P1,P2,P3,P4)
		return pTempObj

	Func mapRectToItem P1,P2
		pTempObj = new QRectF
		pTempObj.pObject = QGraphicsItem_mapRectToItem(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2))
		return pTempObj

	Func mapRectToItem_2 P1,P2,P3,P4,P5
		pTempObj = new QRectF
		pTempObj.pObject = QGraphicsItem_mapRectToItem_2(pObject,GetObjectPointerFromRingObject(P1),P2,P3,P4,P5)
		return pTempObj

	Func mapRectToParent P1
		pTempObj = new QRectF
		pTempObj.pObject = QGraphicsItem_mapRectToParent(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func mapRectToParent_2 P1,P2,P3,P4
		pTempObj = new QRectF
		pTempObj.pObject = QGraphicsItem_mapRectToParent_2(pObject,P1,P2,P3,P4)
		return pTempObj

	Func mapRectToScene P1
		pTempObj = new QRectF
		pTempObj.pObject = QGraphicsItem_mapRectToScene(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func mapRectToScene_2 P1,P2,P3,P4
		pTempObj = new QRectF
		pTempObj.pObject = QGraphicsItem_mapRectToScene_2(pObject,P1,P2,P3,P4)
		return pTempObj

	Func mapToItem P1,P2
		pTempObj = new QPointF
		pTempObj.pObject = QGraphicsItem_mapToItem(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2))
		return pTempObj

	Func mapToItem_2 P1,P2
		return QGraphicsItem_mapToItem_2(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2))

	Func mapToItem_3 P1,P2
		return QGraphicsItem_mapToItem_3(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2))

	Func mapToItem_4 P1,P2
		pTempObj = new QPainterPath
		pTempObj.pObject = QGraphicsItem_mapToItem_4(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2))
		return pTempObj

	Func mapToItem_5 P1,P2,P3
		pTempObj = new QPointF
		pTempObj.pObject = QGraphicsItem_mapToItem_5(pObject,GetObjectPointerFromRingObject(P1),P2,P3)
		return pTempObj

	Func mapToItem_6 P1,P2,P3,P4,P5
		return QGraphicsItem_mapToItem_6(pObject,GetObjectPointerFromRingObject(P1),P2,P3,P4,P5)

	Func mapToParent P1
		pTempObj = new QPointF
		pTempObj.pObject = QGraphicsItem_mapToParent(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func mapToParent_2 P1
		return QGraphicsItem_mapToParent_2(pObject,GetObjectPointerFromRingObject(P1))

	Func mapToParent_3 P1
		return QGraphicsItem_mapToParent_3(pObject,GetObjectPointerFromRingObject(P1))

	Func mapToParent_4 P1
		pTempObj = new QPainterPath
		pTempObj.pObject = QGraphicsItem_mapToParent_4(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func mapToParent_5 P1,P2
		pTempObj = new QPointF
		pTempObj.pObject = QGraphicsItem_mapToParent_5(pObject,P1,P2)
		return pTempObj

	Func mapToParent_6 P1,P2,P3,P4
		return QGraphicsItem_mapToParent_6(pObject,P1,P2,P3,P4)

	Func mapToScene P1
		pTempObj = new QPointF
		pTempObj.pObject = QGraphicsItem_mapToScene(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func mapToScene_2 P1
		return QGraphicsItem_mapToScene_2(pObject,GetObjectPointerFromRingObject(P1))

	Func mapToScene_3 P1
		return QGraphicsItem_mapToScene_3(pObject,GetObjectPointerFromRingObject(P1))

	Func mapToScene_4 P1
		pTempObj = new QPainterPath
		pTempObj.pObject = QGraphicsItem_mapToScene_4(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func mapToScene_5 P1,P2
		pTempObj = new QPointF
		pTempObj.pObject = QGraphicsItem_mapToScene_5(pObject,P1,P2)
		return pTempObj

	Func mapToScene_6 P1,P2,P3,P4
		return QGraphicsItem_mapToScene_6(pObject,P1,P2,P3,P4)

	Func moveBy P1,P2
		return QGraphicsItem_moveBy(pObject,P1,P2)

	Func opacity 
		return QGraphicsItem_opacity(pObject)

	Func opaqueArea 
		pTempObj = new QPainterPath
		pTempObj.pObject = QGraphicsItem_opaqueArea(pObject)
		return pTempObj

	Func paint P1,P2,P3
		return QGraphicsItem_paint(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2),GetObjectPointerFromRingObject(P3))

	Func panel 
		pTempObj = new QGraphicsItem
		pTempObj.pObject = QGraphicsItem_panel(pObject)
		return pTempObj

	Func panelModality 
		return QGraphicsItem_panelModality(pObject)

	Func parentItem 
		pTempObj = new QGraphicsItem
		pTempObj.pObject = QGraphicsItem_parentItem(pObject)
		return pTempObj

	Func parentObject 
		pTempObj = new QGraphicsObject
		pTempObj.pObject = QGraphicsItem_parentObject(pObject)
		return pTempObj

	Func parentWidget 
		pTempObj = new QGraphicsWidget
		pTempObj.pObject = QGraphicsItem_parentWidget(pObject)
		return pTempObj

	Func pos 
		pTempObj = new QPointF
		pTempObj.pObject = QGraphicsItem_pos(pObject)
		return pTempObj

	Func removeSceneEventFilter P1
		return QGraphicsItem_removeSceneEventFilter(pObject,GetObjectPointerFromRingObject(P1))

	Func resetTransform 
		return QGraphicsItem_resetTransform(pObject)

	Func rotation 
		return QGraphicsItem_rotation(pObject)

	Func scale 
		return QGraphicsItem_scale(pObject)

	Func scene 
		pTempObj = new QGraphicsScene
		pTempObj.pObject = QGraphicsItem_scene(pObject)
		return pTempObj

	Func sceneBoundingRect 
		pTempObj = new QRectF
		pTempObj.pObject = QGraphicsItem_sceneBoundingRect(pObject)
		return pTempObj

	Func scenePos 
		pTempObj = new QPointF
		pTempObj.pObject = QGraphicsItem_scenePos(pObject)
		return pTempObj

	Func sceneTransform 
		return QGraphicsItem_sceneTransform(pObject)

	Func scroll P1,P2,P3
		return QGraphicsItem_scroll(pObject,P1,P2,GetObjectPointerFromRingObject(P3))

	Func setAcceptDrops P1
		return QGraphicsItem_setAcceptDrops(pObject,P1)

	Func setAcceptHoverEvents P1
		return QGraphicsItem_setAcceptHoverEvents(pObject,P1)

	Func setAcceptTouchEvents P1
		return QGraphicsItem_setAcceptTouchEvents(pObject,P1)

	Func setAcceptedMouseButtons P1
		return QGraphicsItem_setAcceptedMouseButtons(pObject,P1)

	Func setActive P1
		return QGraphicsItem_setActive(pObject,P1)

	Func setBoundingRegionGranularity P1
		return QGraphicsItem_setBoundingRegionGranularity(pObject,P1)

	Func setCacheMode P1,P2
		return QGraphicsItem_setCacheMode(pObject,P1,GetObjectPointerFromRingObject(P2))

	Func setCursor P1
		return QGraphicsItem_setCursor(pObject,GetObjectPointerFromRingObject(P1))

	Func setData P1,P2
		return QGraphicsItem_setData(pObject,P1,GetObjectPointerFromRingObject(P2))

	Func setEnabled P1
		return QGraphicsItem_setEnabled(pObject,P1)

	Func setFiltersChildEvents P1
		return QGraphicsItem_setFiltersChildEvents(pObject,P1)

	Func setFlag P1,P2
		return QGraphicsItem_setFlag(pObject,P1,P2)

	Func setFlags P1
		return QGraphicsItem_setFlags(pObject,P1)

	Func setFocus P1
		return QGraphicsItem_setFocus(pObject,P1)

	Func setFocusProxy P1
		return QGraphicsItem_setFocusProxy(pObject,GetObjectPointerFromRingObject(P1))

	Func setGraphicsEffect P1
		return QGraphicsItem_setGraphicsEffect(pObject,GetObjectPointerFromRingObject(P1))

	Func setGroup P1
		return QGraphicsItem_setGroup(pObject,GetObjectPointerFromRingObject(P1))

	Func setInputMethodHints P1
		return QGraphicsItem_setInputMethodHints(pObject,P1)

	Func setOpacity P1
		return QGraphicsItem_setOpacity(pObject,P1)

	Func setPanelModality P1
		return QGraphicsItem_setPanelModality(pObject,P1)

	Func setParentItem P1
		return QGraphicsItem_setParentItem(pObject,GetObjectPointerFromRingObject(P1))

	Func setPos P1
		return QGraphicsItem_setPos(pObject,GetObjectPointerFromRingObject(P1))

	Func setPos_2 P1,P2
		return QGraphicsItem_setPos_2(pObject,P1,P2)

	Func setRotation P1
		return QGraphicsItem_setRotation(pObject,P1)

	Func setScale P1
		return QGraphicsItem_setScale(pObject,P1)

	Func setSelected P1
		return QGraphicsItem_setSelected(pObject,P1)

	Func setToolTip P1
		return QGraphicsItem_setToolTip(pObject,P1)

	Func setTransform P1,P2
		return QGraphicsItem_setTransform(pObject,GetObjectPointerFromRingObject(P1),P2)

	Func setTransformOriginPoint P1
		return QGraphicsItem_setTransformOriginPoint(pObject,GetObjectPointerFromRingObject(P1))

	Func setTransformOriginPoint_2 P1,P2
		return QGraphicsItem_setTransformOriginPoint_2(pObject,P1,P2)

	Func setTransformations P1
		return QGraphicsItem_setTransformations(pObject,GetObjectPointerFromRingObject(P1))

	Func setVisible P1
		return QGraphicsItem_setVisible(pObject,P1)

	Func setX P1
		return QGraphicsItem_setX(pObject,P1)

	Func setY P1
		return QGraphicsItem_setY(pObject,P1)

	Func setZValue P1
		return QGraphicsItem_setZValue(pObject,P1)

	Func shape 
		pTempObj = new QPainterPath
		pTempObj.pObject = QGraphicsItem_shape(pObject)
		return pTempObj

	Func show 
		return QGraphicsItem_show(pObject)

	Func stackBefore P1
		return QGraphicsItem_stackBefore(pObject,GetObjectPointerFromRingObject(P1))

	Func toGraphicsObject 
		pTempObj = new QGraphicsObject
		pTempObj.pObject = QGraphicsItem_toGraphicsObject(pObject)
		return pTempObj

	Func toGraphicsObject_2 
		pTempObj = new QGraphicsObject
		pTempObj.pObject = QGraphicsItem_toGraphicsObject_2(pObject)
		return pTempObj

	Func toolTip 
		return QGraphicsItem_toolTip(pObject)

	Func topLevelItem 
		pTempObj = new QGraphicsItem
		pTempObj.pObject = QGraphicsItem_topLevelItem(pObject)
		return pTempObj

	Func topLevelWidget 
		pTempObj = new QGraphicsWidget
		pTempObj.pObject = QGraphicsItem_topLevelWidget(pObject)
		return pTempObj

	Func transform 
		return QGraphicsItem_transform(pObject)

	Func transformOriginPoint 
		pTempObj = new QPointF
		pTempObj.pObject = QGraphicsItem_transformOriginPoint(pObject)
		return pTempObj

	Func transformations 
		return QGraphicsItem_transformations(pObject)

	Func type 
		return QGraphicsItem_type(pObject)

	Func ungrabKeyboard 
		return QGraphicsItem_ungrabKeyboard(pObject)

	Func ungrabMouse 
		return QGraphicsItem_ungrabMouse(pObject)

	Func unsetCursor 
		return QGraphicsItem_unsetCursor(pObject)

	Func update P1
		return QGraphicsItem_update(pObject,GetObjectPointerFromRingObject(P1))

	Func update_2 P1,P2,P3,P4
		return QGraphicsItem_update_2(pObject,P1,P2,P3,P4)

	Func window 
		pTempObj = new QGraphicsWidget
		pTempObj.pObject = QGraphicsItem_window(pObject)
		return pTempObj

	Func x 
		return QGraphicsItem_x(pObject)

	Func y 
		return QGraphicsItem_y(pObject)

	Func zValue 
		return QGraphicsItem_zValue(pObject)

Class QAbstractGraphicsShapeItem from QGraphicsItem

	pObject

	Func init P1
		pObject = QAbstractGraphicsShapeItem_new(GetObjectPointerFromRingObject(P1))
		return self

	Func delete
		pObject = QAbstractGraphicsShapeItem_delete(pObject)

	Func ObjectPointer
		return pObject

	Func brush 
		pTempObj = new QBrush
		pTempObj.pObject = QAbstractGraphicsShapeItem_brush(pObject)
		return pTempObj

	Func pen 
		pTempObj = new QPen
		pTempObj.pObject = QAbstractGraphicsShapeItem_pen(pObject)
		return pTempObj

	Func setBrush P1
		return QAbstractGraphicsShapeItem_setBrush(pObject,GetObjectPointerFromRingObject(P1))

	Func setPen P1
		return QAbstractGraphicsShapeItem_setPen(pObject,GetObjectPointerFromRingObject(P1))

Class QGraphicsAnchor from QObject

	pObject

	Func init P1
		pObject = QGraphicsAnchor_new(GetObjectPointerFromRingObject(P1))
		return self

	Func delete
		pObject = QGraphicsAnchor_delete(pObject)

	Func ObjectPointer
		return pObject

	Func setSizePolicy P1
		return QGraphicsAnchor_setSizePolicy(pObject,P1)

	Func setSpacing P1
		return QGraphicsAnchor_setSpacing(pObject,P1)

	Func sizePolicy 
		return QGraphicsAnchor_sizePolicy(pObject)

	Func spacing 
		return QGraphicsAnchor_spacing(pObject)

	Func unsetSpacing 
		return QGraphicsAnchor_unsetSpacing(pObject)

Class QGraphicsAnchorLayout from QGraphicsLayout

	pObject

	Func init P1
		pObject = QGraphicsAnchorLayout_new(GetObjectPointerFromRingObject(P1))
		return self

	Func delete
		pObject = QGraphicsAnchorLayout_delete(pObject)

	Func ObjectPointer
		return pObject

	Func addAnchor P1,P2,P3,P4
		pTempObj = new QGraphicsAnchor
		pTempObj.pObject = QGraphicsAnchorLayout_addAnchor(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2),GetObjectPointerFromRingObject(P3),GetObjectPointerFromRingObject(P4))
		return pTempObj

	Func addAnchors P1,P2,P3
		return QGraphicsAnchorLayout_addAnchors(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2),GetObjectPointerFromRingObject(P3))

	Func addCornerAnchors P1,P2,P3,P4
		return QGraphicsAnchorLayout_addCornerAnchors(pObject,GetObjectPointerFromRingObject(P1),P2,GetObjectPointerFromRingObject(P3),P4)

	Func anchor P1,P2,P3,P4
		pTempObj = new QGraphicsAnchor
		pTempObj.pObject = QGraphicsAnchorLayout_anchor(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2),GetObjectPointerFromRingObject(P3),GetObjectPointerFromRingObject(P4))
		return pTempObj

	Func horizontalSpacing 
		return QGraphicsAnchorLayout_horizontalSpacing(pObject)

	Func setHorizontalSpacing P1
		return QGraphicsAnchorLayout_setHorizontalSpacing(pObject,P1)

	Func setSpacing P1
		return QGraphicsAnchorLayout_setSpacing(pObject,P1)

	Func setVerticalSpacing P1
		return QGraphicsAnchorLayout_setVerticalSpacing(pObject,P1)

	Func verticalSpacing 
		return QGraphicsAnchorLayout_verticalSpacing(pObject)

Class QGraphicsLayout from QGraphicsLayoutItem

	pObject

	Func init P1
		pObject = QGraphicsLayout_new(GetObjectPointerFromRingObject(P1))
		return self

	Func delete
		pObject = QGraphicsLayout_delete(pObject)

	Func ObjectPointer
		return pObject

	Func activate 
		return QGraphicsLayout_activate(pObject)

	Func count 
		return QGraphicsLayout_count(pObject)

	Func invalidate 
		return QGraphicsLayout_invalidate(pObject)

	Func isActivated 
		return QGraphicsLayout_isActivated(pObject)

	Func itemAt P1
		pTempObj = new QGraphicsLayoutItem
		pTempObj.pObject = QGraphicsLayout_itemAt(pObject,P1)
		return pTempObj

	Func removeAt P1
		return QGraphicsLayout_removeAt(pObject,P1)

	Func setContentsMargins P1,P2,P3,P4
		return QGraphicsLayout_setContentsMargins(pObject,P1,P2,P3,P4)

	Func widgetEvent P1
		return QGraphicsLayout_widgetEvent(pObject,GetObjectPointerFromRingObject(P1))

Class QGraphicsEllipseItem from QAbstractGraphicsShapeItem

	pObject

	Func init P1
		pObject = QGraphicsEllipseItem_new(GetObjectPointerFromRingObject(P1))
		return self

	Func delete
		pObject = QGraphicsEllipseItem_delete(pObject)

	Func ObjectPointer
		return pObject

	Func rect 
		pTempObj = new QRectF
		pTempObj.pObject = QGraphicsEllipseItem_rect(pObject)
		return pTempObj

	Func setRect P1
		return QGraphicsEllipseItem_setRect(pObject,GetObjectPointerFromRingObject(P1))

	Func setRect_2 P1,P2,P3,P4
		return QGraphicsEllipseItem_setRect_2(pObject,P1,P2,P3,P4)

	Func setSpanAngle P1
		return QGraphicsEllipseItem_setSpanAngle(pObject,P1)

	Func setStartAngle P1
		return QGraphicsEllipseItem_setStartAngle(pObject,P1)

	Func spanAngle 
		return QGraphicsEllipseItem_spanAngle(pObject)

	Func startAngle 
		return QGraphicsEllipseItem_startAngle(pObject)

Class QGraphicsGridLayout from QGraphicsLayout

	pObject

	Func init P1
		pObject = QGraphicsGridLayout_new(GetObjectPointerFromRingObject(P1))
		return self

	Func delete
		pObject = QGraphicsGridLayout_delete(pObject)

	Func ObjectPointer
		return pObject

	Func addItem P1,P2,P3,P4,P5,P6
		return QGraphicsGridLayout_addItem(pObject,GetObjectPointerFromRingObject(P1),P2,P3,P4,P5,P6)

	Func addItem_2 P1,P2,P3,P4
		return QGraphicsGridLayout_addItem_2(pObject,GetObjectPointerFromRingObject(P1),P2,P3,P4)

	Func alignment P1
		return QGraphicsGridLayout_alignment(pObject,GetObjectPointerFromRingObject(P1))

	Func columnAlignment P1
		return QGraphicsGridLayout_columnAlignment(pObject,P1)

	Func columnCount 
		return QGraphicsGridLayout_columnCount(pObject)

	Func columnMaximumWidth P1
		return QGraphicsGridLayout_columnMaximumWidth(pObject,P1)

	Func columnMinimumWidth P1
		return QGraphicsGridLayout_columnMinimumWidth(pObject,P1)

	Func columnPreferredWidth P1
		return QGraphicsGridLayout_columnPreferredWidth(pObject,P1)

	Func columnSpacing P1
		return QGraphicsGridLayout_columnSpacing(pObject,P1)

	Func columnStretchFactor P1
		return QGraphicsGridLayout_columnStretchFactor(pObject,P1)

	Func horizontalSpacing 
		return QGraphicsGridLayout_horizontalSpacing(pObject)

	Func itemAt P1,P2
		pTempObj = new QGraphicsLayoutItem
		pTempObj.pObject = QGraphicsGridLayout_itemAt(pObject,P1,P2)
		return pTempObj

	Func removeItem P1
		return QGraphicsGridLayout_removeItem(pObject,GetObjectPointerFromRingObject(P1))

	Func rowAlignment P1
		return QGraphicsGridLayout_rowAlignment(pObject,P1)

	Func rowCount 
		return QGraphicsGridLayout_rowCount(pObject)

	Func rowMaximumHeight P1
		return QGraphicsGridLayout_rowMaximumHeight(pObject,P1)

	Func rowMinimumHeight P1
		return QGraphicsGridLayout_rowMinimumHeight(pObject,P1)

	Func rowPreferredHeight P1
		return QGraphicsGridLayout_rowPreferredHeight(pObject,P1)

	Func rowSpacing P1
		return QGraphicsGridLayout_rowSpacing(pObject,P1)

	Func rowStretchFactor P1
		return QGraphicsGridLayout_rowStretchFactor(pObject,P1)

	Func setAlignment P1,P2
		return QGraphicsGridLayout_setAlignment(pObject,GetObjectPointerFromRingObject(P1),P2)

	Func setColumnAlignment P1,P2
		return QGraphicsGridLayout_setColumnAlignment(pObject,P1,P2)

	Func setColumnFixedWidth P1,P2
		return QGraphicsGridLayout_setColumnFixedWidth(pObject,P1,P2)

	Func setColumnMaximumWidth P1,P2
		return QGraphicsGridLayout_setColumnMaximumWidth(pObject,P1,P2)

	Func setColumnMinimumWidth P1,P2
		return QGraphicsGridLayout_setColumnMinimumWidth(pObject,P1,P2)

	Func setColumnPreferredWidth P1,P2
		return QGraphicsGridLayout_setColumnPreferredWidth(pObject,P1,P2)

	Func setColumnSpacing P1,P2
		return QGraphicsGridLayout_setColumnSpacing(pObject,P1,P2)

	Func setColumnStretchFactor P1,P2
		return QGraphicsGridLayout_setColumnStretchFactor(pObject,P1,P2)

	Func setHorizontalSpacing P1
		return QGraphicsGridLayout_setHorizontalSpacing(pObject,P1)

	Func setRowAlignment P1,P2
		return QGraphicsGridLayout_setRowAlignment(pObject,P1,P2)

	Func setRowFixedHeight P1,P2
		return QGraphicsGridLayout_setRowFixedHeight(pObject,P1,P2)

	Func setRowMaximumHeight P1,P2
		return QGraphicsGridLayout_setRowMaximumHeight(pObject,P1,P2)

	Func setRowMinimumHeight P1,P2
		return QGraphicsGridLayout_setRowMinimumHeight(pObject,P1,P2)

	Func setRowPreferredHeight P1,P2
		return QGraphicsGridLayout_setRowPreferredHeight(pObject,P1,P2)

	Func setRowSpacing P1,P2
		return QGraphicsGridLayout_setRowSpacing(pObject,P1,P2)

	Func setRowStretchFactor P1,P2
		return QGraphicsGridLayout_setRowStretchFactor(pObject,P1,P2)

	Func setSpacing P1
		return QGraphicsGridLayout_setSpacing(pObject,P1)

	Func setVerticalSpacing P1
		return QGraphicsGridLayout_setVerticalSpacing(pObject,P1)

	Func verticalSpacing 
		return QGraphicsGridLayout_verticalSpacing(pObject)

Class QGraphicsItemGroup from QGraphicsItem

	pObject

	Func init P1
		pObject = QGraphicsItemGroup_new(GetObjectPointerFromRingObject(P1))
		return self

	Func delete
		pObject = QGraphicsItemGroup_delete(pObject)

	Func ObjectPointer
		return pObject

	Func addToGroup P1
		return QGraphicsItemGroup_addToGroup(pObject,GetObjectPointerFromRingObject(P1))

	Func removeFromGroup P1
		return QGraphicsItemGroup_removeFromGroup(pObject,GetObjectPointerFromRingObject(P1))

Class QGraphicsLayoutItem

	pObject

	Func init P1,P2
		pObject = QGraphicsLayoutItem_new(GetObjectPointerFromRingObject(P1),P2)
		return self

	Func delete
		pObject = QGraphicsLayoutItem_delete(pObject)

	Func ObjectPointer
		return pObject

	Func contentsRect 
		pTempObj = new QRectF
		pTempObj.pObject = QGraphicsLayoutItem_contentsRect(pObject)
		return pTempObj

	Func effectiveSizeHint P1,P2
		return QGraphicsLayoutItem_effectiveSizeHint(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2))

	Func geometry 
		pTempObj = new QRectF
		pTempObj.pObject = QGraphicsLayoutItem_geometry(pObject)
		return pTempObj

	Func getContentsMargins P1,P2,P3,P4
		return QGraphicsLayoutItem_getContentsMargins(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2),GetObjectPointerFromRingObject(P3),GetObjectPointerFromRingObject(P4))

	Func graphicsItem 
		pTempObj = new QGraphicsItem
		pTempObj.pObject = QGraphicsLayoutItem_graphicsItem(pObject)
		return pTempObj

	Func isLayout 
		return QGraphicsLayoutItem_isLayout(pObject)

	Func maximumHeight 
		return QGraphicsLayoutItem_maximumHeight(pObject)

	Func maximumSize 
		return QGraphicsLayoutItem_maximumSize(pObject)

	Func maximumWidth 
		return QGraphicsLayoutItem_maximumWidth(pObject)

	Func minimumHeight 
		return QGraphicsLayoutItem_minimumHeight(pObject)

	Func minimumSize 
		return QGraphicsLayoutItem_minimumSize(pObject)

	Func minimumWidth 
		return QGraphicsLayoutItem_minimumWidth(pObject)

	Func ownedByLayout 
		return QGraphicsLayoutItem_ownedByLayout(pObject)

	Func parentLayoutItem 
		pTempObj = new QGraphicsLayoutItem
		pTempObj.pObject = QGraphicsLayoutItem_parentLayoutItem(pObject)
		return pTempObj

	Func preferredHeight 
		return QGraphicsLayoutItem_preferredHeight(pObject)

	Func preferredSize 
		return QGraphicsLayoutItem_preferredSize(pObject)

	Func preferredWidth 
		return QGraphicsLayoutItem_preferredWidth(pObject)

	Func setGeometry P1
		return QGraphicsLayoutItem_setGeometry(pObject,GetObjectPointerFromRingObject(P1))

	Func setMaximumHeight P1
		return QGraphicsLayoutItem_setMaximumHeight(pObject,P1)

	Func setMaximumSize P1
		return QGraphicsLayoutItem_setMaximumSize(pObject,GetObjectPointerFromRingObject(P1))

	Func setMaximumSize_2 P1,P2
		return QGraphicsLayoutItem_setMaximumSize_2(pObject,P1,P2)

	Func setMaximumWidth P1
		return QGraphicsLayoutItem_setMaximumWidth(pObject,P1)

	Func setMinimumHeight P1
		return QGraphicsLayoutItem_setMinimumHeight(pObject,P1)

	Func setMinimumSize P1
		return QGraphicsLayoutItem_setMinimumSize(pObject,GetObjectPointerFromRingObject(P1))

	Func setMinimumSize_2 P1,P2
		return QGraphicsLayoutItem_setMinimumSize_2(pObject,P1,P2)

	Func setMinimumWidth P1
		return QGraphicsLayoutItem_setMinimumWidth(pObject,P1)

	Func setParentLayoutItem P1
		return QGraphicsLayoutItem_setParentLayoutItem(pObject,GetObjectPointerFromRingObject(P1))

	Func setPreferredHeight P1
		return QGraphicsLayoutItem_setPreferredHeight(pObject,P1)

	Func setPreferredSize P1
		return QGraphicsLayoutItem_setPreferredSize(pObject,GetObjectPointerFromRingObject(P1))

	Func setPreferredSize_2 P1,P2
		return QGraphicsLayoutItem_setPreferredSize_2(pObject,P1,P2)

	Func setPreferredWidth P1
		return QGraphicsLayoutItem_setPreferredWidth(pObject,P1)

	Func setSizePolicy P1
		return QGraphicsLayoutItem_setSizePolicy(pObject,GetObjectPointerFromRingObject(P1))

	Func setSizePolicy_2 P1,P2,P3
		return QGraphicsLayoutItem_setSizePolicy_2(pObject,P1,P2,GetObjectPointerFromRingObject(P3))

	Func sizePolicy 
		return QGraphicsLayoutItem_sizePolicy(pObject)

	Func updateGeometry 
		return QGraphicsLayoutItem_updateGeometry(pObject)

Class QGraphicsLineItem from QGraphicsItem

	pObject

	Func init P1
		pObject = QGraphicsLineItem_new(GetObjectPointerFromRingObject(P1))
		return self

	Func delete
		pObject = QGraphicsLineItem_delete(pObject)

	Func ObjectPointer
		return pObject

	Func line 
		pTempObj = new QLineF
		pTempObj.pObject = QGraphicsLineItem_line(pObject)
		return pTempObj

	Func pen 
		pTempObj = new QPen
		pTempObj.pObject = QGraphicsLineItem_pen(pObject)
		return pTempObj

	Func setLine P1
		return QGraphicsLineItem_setLine(pObject,GetObjectPointerFromRingObject(P1))

	Func setLine_2 P1,P2,P3,P4
		return QGraphicsLineItem_setLine_2(pObject,P1,P2,P3,P4)

	Func setPen P1
		return QGraphicsLineItem_setPen(pObject,GetObjectPointerFromRingObject(P1))

Class QGraphicsLinearLayout from QGraphicsLayout

	pObject

	Func init P1
		pObject = QGraphicsLinearLayout_new(GetObjectPointerFromRingObject(P1))
		return self

	Func delete
		pObject = QGraphicsLinearLayout_delete(pObject)

	Func ObjectPointer
		return pObject

	Func addItem P1
		return QGraphicsLinearLayout_addItem(pObject,GetObjectPointerFromRingObject(P1))

	Func addStretch P1
		return QGraphicsLinearLayout_addStretch(pObject,P1)

	Func alignment P1
		return QGraphicsLinearLayout_alignment(pObject,GetObjectPointerFromRingObject(P1))

	Func insertItem P1,P2
		return QGraphicsLinearLayout_insertItem(pObject,P1,GetObjectPointerFromRingObject(P2))

	Func insertStretch P1,P2
		return QGraphicsLinearLayout_insertStretch(pObject,P1,P2)

	Func itemSpacing P1
		return QGraphicsLinearLayout_itemSpacing(pObject,P1)

	Func orientation 
		return QGraphicsLinearLayout_orientation(pObject)

	Func removeItem P1
		return QGraphicsLinearLayout_removeItem(pObject,GetObjectPointerFromRingObject(P1))

	Func setAlignment P1,P2
		return QGraphicsLinearLayout_setAlignment(pObject,GetObjectPointerFromRingObject(P1),P2)

	Func setItemSpacing P1,P2
		return QGraphicsLinearLayout_setItemSpacing(pObject,P1,P2)

	Func setOrientation P1
		return QGraphicsLinearLayout_setOrientation(pObject,P1)

	Func setSpacing P1
		return QGraphicsLinearLayout_setSpacing(pObject,P1)

	Func setStretchFactor P1,P2
		return QGraphicsLinearLayout_setStretchFactor(pObject,GetObjectPointerFromRingObject(P1),P2)

	Func spacing 
		return QGraphicsLinearLayout_spacing(pObject)

	Func stretchFactor P1
		return QGraphicsLinearLayout_stretchFactor(pObject,GetObjectPointerFromRingObject(P1))

Class QGraphicsPathItem from QAbstractGraphicsShapeItem

	pObject

	Func init P1
		pObject = QGraphicsPathItem_new(GetObjectPointerFromRingObject(P1))
		return self

	Func delete
		pObject = QGraphicsPathItem_delete(pObject)

	Func ObjectPointer
		return pObject

	Func path 
		pTempObj = new QPainterPath
		pTempObj.pObject = QGraphicsPathItem_path(pObject)
		return pTempObj

	Func setPath P1
		return QGraphicsPathItem_setPath(pObject,GetObjectPointerFromRingObject(P1))

Class QGraphicsPixmapItem from QGraphicsItem

	pObject

	Func init P1
		pObject = QGraphicsPixmapItem_new(GetObjectPointerFromRingObject(P1))
		return self

	Func delete
		pObject = QGraphicsPixmapItem_delete(pObject)

	Func ObjectPointer
		return pObject

	Func offset 
		pTempObj = new QPointF
		pTempObj.pObject = QGraphicsPixmapItem_offset(pObject)
		return pTempObj

	Func pixmap 
		pTempObj = new QPixmap
		pTempObj.pObject = QGraphicsPixmapItem_pixmap(pObject)
		return pTempObj

	Func setOffset P1
		return QGraphicsPixmapItem_setOffset(pObject,GetObjectPointerFromRingObject(P1))

	Func setOffset_2 P1,P2
		return QGraphicsPixmapItem_setOffset_2(pObject,P1,P2)

	Func setPixmap P1
		return QGraphicsPixmapItem_setPixmap(pObject,GetObjectPointerFromRingObject(P1))

	Func setShapeMode P1
		return QGraphicsPixmapItem_setShapeMode(pObject,P1)

	Func setTransformationMode P1
		return QGraphicsPixmapItem_setTransformationMode(pObject,P1)

	Func shapeMode 
		return QGraphicsPixmapItem_shapeMode(pObject)

	Func transformationMode 
		return QGraphicsPixmapItem_transformationMode(pObject)

Class QGraphicsPolygonItem from QAbstractGraphicsShapeItem

	pObject

	Func init P1
		pObject = QGraphicsPolygonItem_new(GetObjectPointerFromRingObject(P1))
		return self

	Func delete
		pObject = QGraphicsPolygonItem_delete(pObject)

	Func ObjectPointer
		return pObject

	Func fillRule 
		return QGraphicsPolygonItem_fillRule(pObject)

	Func polygon 
		return QGraphicsPolygonItem_polygon(pObject)

	Func setFillRule P1
		return QGraphicsPolygonItem_setFillRule(pObject,P1)

	Func setPolygon P1
		return QGraphicsPolygonItem_setPolygon(pObject,GetObjectPointerFromRingObject(P1))

Class QGraphicsProxyWidget from QGraphicsWidget

	pObject

	Func init P1,P2
		pObject = QGraphicsProxyWidget_new(GetObjectPointerFromRingObject(P1),P2)
		return self

	Func delete
		pObject = QGraphicsProxyWidget_delete(pObject)

	Func ObjectPointer
		return pObject

	Func createProxyForChildWidget P1
		pTempObj = new QGraphicsProxyWidget
		pTempObj.pObject = QGraphicsProxyWidget_createProxyForChildWidget(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func setWidget P1
		return QGraphicsProxyWidget_setWidget(pObject,GetObjectPointerFromRingObject(P1))

	Func subWidgetRect P1
		pTempObj = new QRectF
		pTempObj.pObject = QGraphicsProxyWidget_subWidgetRect(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func widget 
		pTempObj = new QWidget
		pTempObj.pObject = QGraphicsProxyWidget_widget(pObject)
		return pTempObj

Class QGraphicsRectItem from QAbstractGraphicsShapeItem

	pObject

	Func init P1
		pObject = QGraphicsRectItem_new(GetObjectPointerFromRingObject(P1))
		return self

	Func delete
		pObject = QGraphicsRectItem_delete(pObject)

	Func ObjectPointer
		return pObject

	Func rect 
		pTempObj = new QRectF
		pTempObj.pObject = QGraphicsRectItem_rect(pObject)
		return pTempObj

	Func setRect P1
		return QGraphicsRectItem_setRect(pObject,GetObjectPointerFromRingObject(P1))

	Func setRect_2 P1,P2,P3,P4
		return QGraphicsRectItem_setRect_2(pObject,P1,P2,P3,P4)

Class QGraphicsSceneContextMenuEvent from QGraphicsSceneEvent

	pObject

	Func init P1
		pObject = QGraphicsSceneContextMenuEvent_new(GetObjectPointerFromRingObject(P1))
		return self

	Func delete
		pObject = QGraphicsSceneContextMenuEvent_delete(pObject)

	Func ObjectPointer
		return pObject

	Func modifiers 
		return QGraphicsSceneContextMenuEvent_modifiers(pObject)

	Func pos 
		pTempObj = new QPointF
		pTempObj.pObject = QGraphicsSceneContextMenuEvent_pos(pObject)
		return pTempObj

	Func reason 
		return QGraphicsSceneContextMenuEvent_reason(pObject)

	Func scenePos 
		pTempObj = new QPointF
		pTempObj.pObject = QGraphicsSceneContextMenuEvent_scenePos(pObject)
		return pTempObj

	Func screenPos 
		pTempObj = new QPoint
		pTempObj.pObject = QGraphicsSceneContextMenuEvent_screenPos(pObject)
		return pTempObj

Class QGraphicsSceneDragDropEvent from QGraphicsSceneEvent

	pObject

	Func init P1
		pObject = QGraphicsSceneDragDropEvent_new(GetObjectPointerFromRingObject(P1))
		return self

	Func delete
		pObject = QGraphicsSceneDragDropEvent_delete(pObject)

	Func ObjectPointer
		return pObject

	Func acceptProposedAction 
		return QGraphicsSceneDragDropEvent_acceptProposedAction(pObject)

	Func buttons 
		return QGraphicsSceneDragDropEvent_buttons(pObject)

	Func dropAction 
		return QGraphicsSceneDragDropEvent_dropAction(pObject)

	Func mimeData 
		pTempObj = new QMimeData
		pTempObj.pObject = QGraphicsSceneDragDropEvent_mimeData(pObject)
		return pTempObj

	Func modifiers 
		return QGraphicsSceneDragDropEvent_modifiers(pObject)

	Func pos 
		pTempObj = new QPointF
		pTempObj.pObject = QGraphicsSceneDragDropEvent_pos(pObject)
		return pTempObj

	Func possibleActions 
		return QGraphicsSceneDragDropEvent_possibleActions(pObject)

	Func proposedAction 
		return QGraphicsSceneDragDropEvent_proposedAction(pObject)

	Func scenePos 
		pTempObj = new QPointF
		pTempObj.pObject = QGraphicsSceneDragDropEvent_scenePos(pObject)
		return pTempObj

	Func screenPos 
		pTempObj = new QPoint
		pTempObj.pObject = QGraphicsSceneDragDropEvent_screenPos(pObject)
		return pTempObj

	Func setDropAction P1
		return QGraphicsSceneDragDropEvent_setDropAction(pObject,P1)

	Func source 
		pTempObj = new QWidget
		pTempObj.pObject = QGraphicsSceneDragDropEvent_source(pObject)
		return pTempObj

Class QGraphicsSceneEvent from QEvent

	pObject

	Func init P1
		pObject = QGraphicsSceneEvent_new(GetObjectPointerFromRingObject(P1))
		return self

	Func delete
		pObject = QGraphicsSceneEvent_delete(pObject)

	Func ObjectPointer
		return pObject

	Func widget 
		pTempObj = new QWidget
		pTempObj.pObject = QGraphicsSceneEvent_widget(pObject)
		return pTempObj

Class QGraphicsSceneHelpEvent from QGraphicsSceneEvent

	pObject

	Func init P1
		pObject = QGraphicsSceneHelpEvent_new(GetObjectPointerFromRingObject(P1))
		return self

	Func delete
		pObject = QGraphicsSceneHelpEvent_delete(pObject)

	Func ObjectPointer
		return pObject

	Func scenePos 
		pTempObj = new QPointF
		pTempObj.pObject = QGraphicsSceneHelpEvent_scenePos(pObject)
		return pTempObj

	Func screenPos 
		pTempObj = new QPoint
		pTempObj.pObject = QGraphicsSceneHelpEvent_screenPos(pObject)
		return pTempObj

Class QGraphicsSceneHoverEvent from QGraphicsSceneEvent

	pObject

	Func init P1
		pObject = QGraphicsSceneHoverEvent_new(GetObjectPointerFromRingObject(P1))
		return self

	Func delete
		pObject = QGraphicsSceneHoverEvent_delete(pObject)

	Func ObjectPointer
		return pObject

	Func lastPos 
		pTempObj = new QPointF
		pTempObj.pObject = QGraphicsSceneHoverEvent_lastPos(pObject)
		return pTempObj

	Func lastScenePos 
		pTempObj = new QPointF
		pTempObj.pObject = QGraphicsSceneHoverEvent_lastScenePos(pObject)
		return pTempObj

	Func lastScreenPos 
		pTempObj = new QPoint
		pTempObj.pObject = QGraphicsSceneHoverEvent_lastScreenPos(pObject)
		return pTempObj

	Func modifiers 
		return QGraphicsSceneHoverEvent_modifiers(pObject)

	Func pos 
		pTempObj = new QPointF
		pTempObj.pObject = QGraphicsSceneHoverEvent_pos(pObject)
		return pTempObj

	Func scenePos 
		pTempObj = new QPointF
		pTempObj.pObject = QGraphicsSceneHoverEvent_scenePos(pObject)
		return pTempObj

	Func screenPos 
		pTempObj = new QPoint
		pTempObj.pObject = QGraphicsSceneHoverEvent_screenPos(pObject)
		return pTempObj

Class QGraphicsSceneMouseEvent from QGraphicsSceneEvent

	pObject

	Func init P1
		pObject = QGraphicsSceneMouseEvent_new(GetObjectPointerFromRingObject(P1))
		return self

	Func delete
		pObject = QGraphicsSceneMouseEvent_delete(pObject)

	Func ObjectPointer
		return pObject

	Func button 
		return QGraphicsSceneMouseEvent_button(pObject)

	Func buttonDownPos P1
		pTempObj = new QPointF
		pTempObj.pObject = QGraphicsSceneMouseEvent_buttonDownPos(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func buttonDownScenePos P1
		pTempObj = new QPointF
		pTempObj.pObject = QGraphicsSceneMouseEvent_buttonDownScenePos(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func buttonDownScreenPos P1
		pTempObj = new QPoint
		pTempObj.pObject = QGraphicsSceneMouseEvent_buttonDownScreenPos(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func buttons 
		return QGraphicsSceneMouseEvent_buttons(pObject)

	Func flags 
		return QGraphicsSceneMouseEvent_flags(pObject)

	Func lastPos 
		pTempObj = new QPointF
		pTempObj.pObject = QGraphicsSceneMouseEvent_lastPos(pObject)
		return pTempObj

	Func lastScenePos 
		pTempObj = new QPointF
		pTempObj.pObject = QGraphicsSceneMouseEvent_lastScenePos(pObject)
		return pTempObj

	Func lastScreenPos 
		pTempObj = new QPoint
		pTempObj.pObject = QGraphicsSceneMouseEvent_lastScreenPos(pObject)
		return pTempObj

	Func modifiers 
		return QGraphicsSceneMouseEvent_modifiers(pObject)

	Func pos 
		pTempObj = new QPointF
		pTempObj.pObject = QGraphicsSceneMouseEvent_pos(pObject)
		return pTempObj

	Func scenePos 
		pTempObj = new QPointF
		pTempObj.pObject = QGraphicsSceneMouseEvent_scenePos(pObject)
		return pTempObj

	Func screenPos 
		pTempObj = new QPoint
		pTempObj.pObject = QGraphicsSceneMouseEvent_screenPos(pObject)
		return pTempObj

	Func source 
		return QGraphicsSceneMouseEvent_source(pObject)

Class QGraphicsSceneMoveEvent from QGraphicsSceneEvent

	pObject

	Func init P1
		pObject = QGraphicsSceneMoveEvent_new(GetObjectPointerFromRingObject(P1))
		return self

	Func delete
		pObject = QGraphicsSceneMoveEvent_delete(pObject)

	Func ObjectPointer
		return pObject

	Func newPos 
		pTempObj = new QPointF
		pTempObj.pObject = QGraphicsSceneMoveEvent_newPos(pObject)
		return pTempObj

	Func oldPos 
		pTempObj = new QPointF
		pTempObj.pObject = QGraphicsSceneMoveEvent_oldPos(pObject)
		return pTempObj

Class QGraphicsSceneResizeEvent from QGraphicsSceneEvent

	pObject

	Func init P1
		pObject = QGraphicsSceneResizeEvent_new(GetObjectPointerFromRingObject(P1))
		return self

	Func delete
		pObject = QGraphicsSceneResizeEvent_delete(pObject)

	Func ObjectPointer
		return pObject

	Func newSize 
		return QGraphicsSceneResizeEvent_newSize(pObject)

	Func oldSize 
		return QGraphicsSceneResizeEvent_oldSize(pObject)

Class QGraphicsSceneWheelEvent from QGraphicsSceneEvent

	pObject

	Func init P1
		pObject = QGraphicsSceneWheelEvent_new(GetObjectPointerFromRingObject(P1))
		return self

	Func delete
		pObject = QGraphicsSceneWheelEvent_delete(pObject)

	Func ObjectPointer
		return pObject

	Func buttons 
		return QGraphicsSceneWheelEvent_buttons(pObject)

	Func delta 
		return QGraphicsSceneWheelEvent_delta(pObject)

	Func modifiers 
		return QGraphicsSceneWheelEvent_modifiers(pObject)

	Func orientation 
		return QGraphicsSceneWheelEvent_orientation(pObject)

	Func pos 
		pTempObj = new QPointF
		pTempObj.pObject = QGraphicsSceneWheelEvent_pos(pObject)
		return pTempObj

	Func scenePos 
		pTempObj = new QPointF
		pTempObj.pObject = QGraphicsSceneWheelEvent_scenePos(pObject)
		return pTempObj

	Func screenPos 
		pTempObj = new QPoint
		pTempObj.pObject = QGraphicsSceneWheelEvent_screenPos(pObject)
		return pTempObj

Class QGraphicsSimpleTextItem from QAbstractGraphicsShapeItem

	pObject

	Func init P1
		pObject = QGraphicsSimpleTextItem_new(GetObjectPointerFromRingObject(P1))
		return self

	Func delete
		pObject = QGraphicsSimpleTextItem_delete(pObject)

	Func ObjectPointer
		return pObject

	Func font 
		pTempObj = new QFont
		pTempObj.pObject = QGraphicsSimpleTextItem_font(pObject)
		return pTempObj

	Func setFont P1
		return QGraphicsSimpleTextItem_setFont(pObject,GetObjectPointerFromRingObject(P1))

	Func setText P1
		return QGraphicsSimpleTextItem_setText(pObject,P1)

	Func text 
		return QGraphicsSimpleTextItem_text(pObject)

Class QStyleOptionGraphicsItem from QStyleOption

	pObject

	Func init 
		pObject = QStyleOptionGraphicsItem_new()
		return self

	Func delete
		pObject = QStyleOptionGraphicsItem_delete(pObject)

	Func ObjectPointer
		return pObject

	Func levelOfDetailFromTransform P1
		return QStyleOptionGraphicsItem_levelOfDetailFromTransform(pObject,GetObjectPointerFromRingObject(P1))

Class QGraphicsEffect from QObject

	pObject

	Func init P1
		pObject = QGraphicsEffect_new(GetObjectPointerFromRingObject(P1))
		return self

	Func delete
		pObject = QGraphicsEffect_delete(pObject)

	Func ObjectPointer
		return pObject

	Func boundingRect 
		pTempObj = new QRectF
		pTempObj.pObject = QGraphicsEffect_boundingRect(pObject)
		return pTempObj

	Func boundingRectFor P1
		pTempObj = new QRectF
		pTempObj.pObject = QGraphicsEffect_boundingRectFor(pObject,GetObjectPointerFromRingObject(P1))
		return pTempObj

	Func isEnabled 
		return QGraphicsEffect_isEnabled(pObject)

	Func setEnabled P1
		return QGraphicsEffect_setEnabled(pObject,P1)

	Func update 
		return QGraphicsEffect_update(pObject)

	Func setenabledChangedEvent P1
		return QGraphicsEffect_setenabledChangedEvent(pObject,P1)

	Func getenabledChangedEvent 
		return QGraphicsEffect_getenabledChangedEvent(pObject)

Class QGraphicsObject from QGraphicsItem

	pObject

	Func init P1
		pObject = QGraphicsObject_new(GetObjectPointerFromRingObject(P1))
		return self

	Func delete
		pObject = QGraphicsObject_delete(pObject)

	Func ObjectPointer
		return pObject

	Func grabGesture P1,P2
		return QGraphicsObject_grabGesture(pObject,P1,GetObjectPointerFromRingObject(P2))

	Func ungrabGesture P1
		return QGraphicsObject_ungrabGesture(pObject,P1)

	Func setenabledChangedEvent P1
		return QGraphicsObject_setenabledChangedEvent(pObject,P1)

	Func setopacityChangedEvent P1
		return QGraphicsObject_setopacityChangedEvent(pObject,P1)

	Func setparentChangedEvent P1
		return QGraphicsObject_setparentChangedEvent(pObject,P1)

	Func setrotationChangedEvent P1
		return QGraphicsObject_setrotationChangedEvent(pObject,P1)

	Func setscaleChangedEvent P1
		return QGraphicsObject_setscaleChangedEvent(pObject,P1)

	Func setvisibleChangedEvent P1
		return QGraphicsObject_setvisibleChangedEvent(pObject,P1)

	Func setxChangedEvent P1
		return QGraphicsObject_setxChangedEvent(pObject,P1)

	Func setyChangedEvent P1
		return QGraphicsObject_setyChangedEvent(pObject,P1)

	Func setzChangedEvent P1
		return QGraphicsObject_setzChangedEvent(pObject,P1)

	Func getenabledChangedEvent 
		return QGraphicsObject_getenabledChangedEvent(pObject)

	Func getopacityChangedEvent 
		return QGraphicsObject_getopacityChangedEvent(pObject)

	Func getparentChangedEvent 
		return QGraphicsObject_getparentChangedEvent(pObject)

	Func getrotationChangedEvent 
		return QGraphicsObject_getrotationChangedEvent(pObject)

	Func getscaleChangedEvent 
		return QGraphicsObject_getscaleChangedEvent(pObject)

	Func getvisibleChangedEvent 
		return QGraphicsObject_getvisibleChangedEvent(pObject)

	Func getxChangedEvent 
		return QGraphicsObject_getxChangedEvent(pObject)

	Func getyChangedEvent 
		return QGraphicsObject_getyChangedEvent(pObject)

	Func getzChangedEvent 
		return QGraphicsObject_getzChangedEvent(pObject)

Class QGraphicsTextItem from QGraphicsObject

	pObject

	Func init P1
		pObject = QGraphicsTextItem_new(GetObjectPointerFromRingObject(P1))
		return self

	Func delete
		pObject = QGraphicsTextItem_delete(pObject)

	Func ObjectPointer
		return pObject

	Func adjustSize 
		return QGraphicsTextItem_adjustSize(pObject)

	Func defaultTextColor 
		pTempObj = new QColor
		pTempObj.pObject = QGraphicsTextItem_defaultTextColor(pObject)
		return pTempObj

	Func document 
		pTempObj = new QTextDocument
		pTempObj.pObject = QGraphicsTextItem_document(pObject)
		return pTempObj

	Func font 
		pTempObj = new QFont
		pTempObj.pObject = QGraphicsTextItem_font(pObject)
		return pTempObj

	Func openExternalLinks 
		return QGraphicsTextItem_openExternalLinks(pObject)

	Func setDefaultTextColor P1
		return QGraphicsTextItem_setDefaultTextColor(pObject,GetObjectPointerFromRingObject(P1))

	Func setDocument P1
		return QGraphicsTextItem_setDocument(pObject,GetObjectPointerFromRingObject(P1))

	Func setFont P1
		return QGraphicsTextItem_setFont(pObject,GetObjectPointerFromRingObject(P1))

	Func setHtml P1
		return QGraphicsTextItem_setHtml(pObject,P1)

	Func setOpenExternalLinks P1
		return QGraphicsTextItem_setOpenExternalLinks(pObject,P1)

	Func setPlainText P1
		return QGraphicsTextItem_setPlainText(pObject,P1)

	Func setTabChangesFocus P1
		return QGraphicsTextItem_setTabChangesFocus(pObject,P1)

	Func setTextCursor P1
		return QGraphicsTextItem_setTextCursor(pObject,GetObjectPointerFromRingObject(P1))

	Func setTextInteractionFlags P1
		return QGraphicsTextItem_setTextInteractionFlags(pObject,GetObjectPointerFromRingObject(P1))

	Func setTextWidth P1
		return QGraphicsTextItem_setTextWidth(pObject,P1)

	Func tabChangesFocus 
		return QGraphicsTextItem_tabChangesFocus(pObject)

	Func textCursor 
		pTempObj = new QTextCursor
		pTempObj.pObject = QGraphicsTextItem_textCursor(pObject)
		return pTempObj

	Func textInteractionFlags 
		return QGraphicsTextItem_textInteractionFlags(pObject)

	Func textWidth 
		return QGraphicsTextItem_textWidth(pObject)

	Func toHtml 
		return QGraphicsTextItem_toHtml(pObject)

	Func toPlainText 
		return QGraphicsTextItem_toPlainText(pObject)

	Func setlinkActivatedEvent P1
		return QGraphicsTextItem_setlinkActivatedEvent(pObject,P1)

	Func setlinkHoveredEvent P1
		return QGraphicsTextItem_setlinkHoveredEvent(pObject,P1)

	Func getlinkActivatedEvent 
		return QGraphicsTextItem_getlinkActivatedEvent(pObject)

	Func getlinkHoveredEvent 
		return QGraphicsTextItem_getlinkHoveredEvent(pObject)

Class QGraphicsWidget from QGraphicsObject

	pObject

	Func init P1,P2
		pObject = QGraphicsWidget_new(GetObjectPointerFromRingObject(P1),P2)
		return self

	Func delete
		pObject = QGraphicsWidget_delete(pObject)

	Func ObjectPointer
		return pObject

	Func actions 
		return QGraphicsWidget_actions(pObject)

	Func addAction P1
		return QGraphicsWidget_addAction(pObject,GetObjectPointerFromRingObject(P1))

	Func addActions P1
		return QGraphicsWidget_addActions(pObject,GetObjectPointerFromRingObject(P1))

	Func adjustSize 
		return QGraphicsWidget_adjustSize(pObject)

	Func autoFillBackground 
		return QGraphicsWidget_autoFillBackground(pObject)

	Func focusPolicy 
		return QGraphicsWidget_focusPolicy(pObject)

	Func focusWidget 
		pTempObj = new QGraphicsWidget
		pTempObj.pObject = QGraphicsWidget_focusWidget(pObject)
		return pTempObj

	Func font 
		pTempObj = new QFont
		pTempObj.pObject = QGraphicsWidget_font(pObject)
		return pTempObj

	Func getWindowFrameMargins P1,P2,P3,P4
		return QGraphicsWidget_getWindowFrameMargins(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2),GetObjectPointerFromRingObject(P3),GetObjectPointerFromRingObject(P4))

	Func grabShortcut P1,P2
		return QGraphicsWidget_grabShortcut(pObject,GetObjectPointerFromRingObject(P1),P2)

	Func insertAction P1,P2
		return QGraphicsWidget_insertAction(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2))

	Func insertActions P1,P2
		return QGraphicsWidget_insertActions(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2))

	Func isActiveWindow 
		return QGraphicsWidget_isActiveWindow(pObject)

	Func layout 
		pTempObj = new QGraphicsLayout
		pTempObj.pObject = QGraphicsWidget_layout(pObject)
		return pTempObj

	Func layoutDirection 
		return QGraphicsWidget_layoutDirection(pObject)

	Func paintWindowFrame P1,P2,P3
		return QGraphicsWidget_paintWindowFrame(pObject,GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2),GetObjectPointerFromRingObject(P3))

	Func palette 
		return QGraphicsWidget_palette(pObject)

	Func rect 
		pTempObj = new QRectF
		pTempObj.pObject = QGraphicsWidget_rect(pObject)
		return pTempObj

	Func releaseShortcut P1
		return QGraphicsWidget_releaseShortcut(pObject,P1)

	Func removeAction P1
		return QGraphicsWidget_removeAction(pObject,GetObjectPointerFromRingObject(P1))

	Func resize P1
		return QGraphicsWidget_resize(pObject,GetObjectPointerFromRingObject(P1))

	Func resize_2 P1,P2
		return QGraphicsWidget_resize_2(pObject,P1,P2)

	Func setAttribute P1,P2
		return QGraphicsWidget_setAttribute(pObject,P1,P2)

	Func setAutoFillBackground P1
		return QGraphicsWidget_setAutoFillBackground(pObject,P1)

	Func setContentsMargins P1
		return QGraphicsWidget_setContentsMargins(pObject,GetObjectPointerFromRingObject(P1))

	Func setContentsMargins_2 P1,P2,P3,P4
		return QGraphicsWidget_setContentsMargins_2(pObject,P1,P2,P3,P4)

	Func setFocusPolicy P1
		return QGraphicsWidget_setFocusPolicy(pObject,P1)

	Func setFont P1
		return QGraphicsWidget_setFont(pObject,GetObjectPointerFromRingObject(P1))

	Func setGeometry P1,P2,P3,P4
		return QGraphicsWidget_setGeometry(pObject,P1,P2,P3,P4)

	Func setLayout P1
		return QGraphicsWidget_setLayout(pObject,GetObjectPointerFromRingObject(P1))

	Func setLayoutDirection P1
		return QGraphicsWidget_setLayoutDirection(pObject,P1)

	Func setPalette P1
		return QGraphicsWidget_setPalette(pObject,GetObjectPointerFromRingObject(P1))

	Func setShortcutAutoRepeat P1,P2
		return QGraphicsWidget_setShortcutAutoRepeat(pObject,P1,P2)

	Func setShortcutEnabled P1,P2
		return QGraphicsWidget_setShortcutEnabled(pObject,P1,P2)

	Func setStyle P1
		return QGraphicsWidget_setStyle(pObject,GetObjectPointerFromRingObject(P1))

	Func setWindowFlags P1
		return QGraphicsWidget_setWindowFlags(pObject,P1)

	Func setWindowFrameMargins P1
		return QGraphicsWidget_setWindowFrameMargins(pObject,GetObjectPointerFromRingObject(P1))

	Func setWindowFrameMargins_2 P1,P2,P3,P4
		return QGraphicsWidget_setWindowFrameMargins_2(pObject,P1,P2,P3,P4)

	Func setWindowTitle P1
		return QGraphicsWidget_setWindowTitle(pObject,P1)

	Func size 
		return QGraphicsWidget_size(pObject)

	Func style 
		return QGraphicsWidget_style(pObject)

	Func testAttribute P1
		return QGraphicsWidget_testAttribute(pObject,P1)

	Func unsetLayoutDirection 
		return QGraphicsWidget_unsetLayoutDirection(pObject)

	Func unsetWindowFrameMargins 
		return QGraphicsWidget_unsetWindowFrameMargins(pObject)

	Func windowFlags 
		return QGraphicsWidget_windowFlags(pObject)

	Func windowFrameGeometry 
		pTempObj = new QRectF
		pTempObj.pObject = QGraphicsWidget_windowFrameGeometry(pObject)
		return pTempObj

	Func windowFrameRect 
		pTempObj = new QRectF
		pTempObj.pObject = QGraphicsWidget_windowFrameRect(pObject)
		return pTempObj

	Func windowTitle 
		return QGraphicsWidget_windowTitle(pObject)

	Func windowType 
		return QGraphicsWidget_windowType(pObject)

	Func close 
		return QGraphicsWidget_close(pObject)

	Func setgeometryChangedEvent P1
		return QGraphicsWidget_setgeometryChangedEvent(pObject,P1)

	Func setlayoutChangedEvent P1
		return QGraphicsWidget_setlayoutChangedEvent(pObject,P1)

	Func getgeometryChangedEvent 
		return QGraphicsWidget_getgeometryChangedEvent(pObject)

	Func getlayoutChangedEvent 
		return QGraphicsWidget_getlayoutChangedEvent(pObject)

Class QTest

	pObject


	Func qsleep P1
		return QTest_qsleep(P1)

Class QSize

	pObject

	Func init P1,P2
		pObject = QSize_new(P1,P2)
		return self

	Func delete
		pObject = QSize_delete(pObject)

	Func ObjectPointer
		return pObject

Class QVariant2 from QVariant

	pObject

	Func init P1
		pObject = QVariant2_new(P1)
		return self

	Func delete
		pObject = QVariant2_delete(pObject)

	Func ObjectPointer
		return pObject

Class QVariant3 from QVariant

	pObject

	Func init P1
		pObject = QVariant3_new(P1)
		return self

	Func delete
		pObject = QVariant3_delete(pObject)

	Func ObjectPointer
		return pObject

Class QVariant4 from QVariant

	pObject

	Func init P1
		pObject = QVariant4_new(P1)
		return self

	Func delete
		pObject = QVariant4_delete(pObject)

	Func ObjectPointer
		return pObject

Class QVariant5 from QVariant

	pObject

	Func init P1
		pObject = QVariant5_new(P1)
		return self

	Func delete
		pObject = QVariant5_delete(pObject)

	Func ObjectPointer
		return pObject

Class QVariantInt from QVariant

	pObject

	Func init P1
		pObject = QVariantInt_new(P1)
		return self

	Func delete
		pObject = QVariantInt_delete(pObject)

	Func ObjectPointer
		return pObject

Class QVariantFloat from QVariant

	pObject

	Func init P1
		pObject = QVariantFloat_new(P1)
		return self

	Func delete
		pObject = QVariantFloat_delete(pObject)

	Func ObjectPointer
		return pObject

Class QVariantDouble from QVariant

	pObject

	Func init P1
		pObject = QVariantDouble_new(P1)
		return self

	Func delete
		pObject = QVariantDouble_delete(pObject)

	Func ObjectPointer
		return pObject

Class QVariantString from QVariant

	pObject

	Func init P1
		pObject = QVariantString_new(P1)
		return self

	Func delete
		pObject = QVariantString_delete(pObject)

	Func ObjectPointer
		return pObject

Class QXmlStreamEntityResolver

	pObject

	Func init 
		pObject = QXmlStreamEntityResolver_new()
		return self

	Func delete
		pObject = QXmlStreamEntityResolver_delete(pObject)

	Func ObjectPointer
		return pObject

Class QFile2 from QFile

	pObject

	Func init P1
		pObject = QFile2_new(P1)
		return self

	Func delete
		pObject = QFile2_delete(pObject)

	Func ObjectPointer
		return pObject

Class QTextStream2 from QTextStream

	pObject

	Func init P1
		pObject = QTextStream2_new(GetObjectPointerFromRingObject(P1))
		return self

	Func delete
		pObject = QTextStream2_delete(pObject)

	Func ObjectPointer
		return pObject

Class QTextStream3 from QTextStream

	pObject

	Func init P1,P2
		pObject = QTextStream3_new(GetObjectPointerFromRingObject(P1),P2)
		return self

	Func delete
		pObject = QTextStream3_delete(pObject)

	Func ObjectPointer
		return pObject

Class QTextStream4 from QTextStream

	pObject

	Func init P1,P2
		pObject = QTextStream4_new(GetObjectPointerFromRingObject(P1),P2)
		return self

	Func delete
		pObject = QTextStream4_delete(pObject)

	Func ObjectPointer
		return pObject

Class QTextStream5 from QTextStream

	pObject

	Func init P1,P2
		pObject = QTextStream5_new(GetObjectPointerFromRingObject(P1),P2)
		return self

	Func delete
		pObject = QTextStream5_delete(pObject)

	Func ObjectPointer
		return pObject

Class QPixmap2 from QPixmap

	pObject

	Func init P1,P2
		pObject = QPixmap2_new(P1,P2)
		return self

	Func delete
		pObject = QPixmap2_delete(pObject)

	Func ObjectPointer
		return pObject

Class QIcon

	pObject

	Func init P1
		pObject = QIcon_new(GetObjectPointerFromRingObject(P1))
		return self

	Func delete
		pObject = QIcon_delete(pObject)

	Func ObjectPointer
		return pObject

Class QPainter2 from QPainter

	pObject

	Func init P1
		pObject = QPainter2_new(GetObjectPointerFromRingObject(P1))
		return self

	Func delete
		pObject = QPainter2_delete(pObject)

	Func ObjectPointer
		return pObject

Class QKeySequence

	pObject

	Func init P1
		pObject = QKeySequence_new(P1)
		return self

	Func delete
		pObject = QKeySequence_delete(pObject)

	Func ObjectPointer
		return pObject

Class QDragEnterEvent from QDragMoveEvent

	pObject

	Func init P1,P2,P3,P4,P5
		pObject = QDragEnterEvent_new(GetObjectPointerFromRingObject(P1),P2,GetObjectPointerFromRingObject(P3),P4,P5)
		return self

	Func delete
		pObject = QDragEnterEvent_delete(pObject)

	Func ObjectPointer
		return pObject

Class QDragLeaveEvent from QEvent

	pObject

	Func init 
		pObject = QDragLeaveEvent_new()
		return self

	Func delete
		pObject = QDragLeaveEvent_delete(pObject)

	Func ObjectPointer
		return pObject

Class QTransform3 from QTransform2

	pObject

	Func init 
		pObject = QTransform3_new()
		return self

	Func delete
		pObject = QTransform3_delete(pObject)

	Func ObjectPointer
		return pObject

Class QFrame2 from QFrame

	pObject

	Func init 
		pObject = QFrame2_new()
		return self

	Func delete
		pObject = QFrame2_delete(pObject)

	Func ObjectPointer
		return pObject

Class QFrame3 from QFrame

	pObject

	Func init P1
		pObject = QFrame3_new(GetObjectPointerFromRingObject(P1))
		return self

	Func delete
		pObject = QFrame3_delete(pObject)

	Func ObjectPointer
		return pObject

Class QDateEdit from QDateTimeEdit

	pObject

	Func init P1
		pObject = QDateEdit_new(GetObjectPointerFromRingObject(P1))
		return self

	Func delete
		pObject = QDateEdit_delete(pObject)

	Func ObjectPointer
		return pObject

Class QCompleter2 from QCompleter

	pObject

	Func init P1,P2
		pObject = QCompleter2_new(GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2))
		return self

	Func delete
		pObject = QCompleter2_delete(pObject)

	Func ObjectPointer
		return pObject

Class QCompleter3 from QCompleter

	pObject

	Func init P1,P2
		pObject = QCompleter3_new(GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2))
		return self

	Func delete
		pObject = QCompleter3_delete(pObject)

	Func ObjectPointer
		return pObject

Class QCompleter4 from QCompleter

	pObject

	Func init P1,P2
		pObject = QCompleter4_new(GetObjectPointerFromRingObject(P1),GetObjectPointerFromRingObject(P2))
		return self

	Func delete
		pObject = QCompleter4_delete(pObject)

	Func ObjectPointer
		return pObject

Class QScrollBar from QAbstractSlider

	pObject

	Func init P1
		pObject = QScrollBar_new(GetObjectPointerFromRingObject(P1))
		return self

	Func delete
		pObject = QScrollBar_delete(pObject)

	Func ObjectPointer
		return pObject
