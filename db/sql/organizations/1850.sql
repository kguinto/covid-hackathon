
BEGIN;

INSERT INTO organizations
    (
      name,
      address,
      city,
      state,
      instructions,
      accepts_opened,
      latitude,
      longitude
    )
  VALUES
    (
      'Dr.S.Krishna Internal & Cardiology Clinic',
      '114 S Mission St
Sapulpa, OK 74066',
      'Sapulpa',
      'OK',
      'ATTN: DIANNA OFFICE MANAGER /(IF DROPPING OFF HOURS ARE MON-FRI 10 TO 4 CLOSED SAT AND SUN- ASK FOR DIANNA)',
      'Yes',
      '35.9970705',
      '-96.0992426'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dr.S.Krishna Internal & Cardiology Clinic'
        AND o.latitude = '35.9970705'
        AND o.longitude = '-96.0992426'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dr.S.Krishna Internal & Cardiology Clinic'
        AND o.latitude = '35.9970705'
        AND o.longitude = '-96.0992426'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dr.S.Krishna Internal & Cardiology Clinic'
        AND o.latitude = '35.9970705'
        AND o.longitude = '-96.0992426'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dr.S.Krishna Internal & Cardiology Clinic'
        AND o.latitude = '35.9970705'
        AND o.longitude = '-96.0992426'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dr.S.Krishna Internal & Cardiology Clinic'
        AND o.latitude = '35.9970705'
        AND o.longitude = '-96.0992426'));

COMMIT;
