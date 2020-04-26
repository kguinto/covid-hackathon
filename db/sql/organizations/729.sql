
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
      'D''Amour Family Medicine',
      '1801 W. 32nd Street
Building B, Suite 102
Joplin, MO 64804',
      'Joplin',
      'MO',
      '',
      'Yes',
      '37.0562078',
      '-94.5343273'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'D''Amour Family Medicine'
        AND o.latitude = '37.0562078'
        AND o.longitude = '-94.5343273'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'D''Amour Family Medicine'
        AND o.latitude = '37.0562078'
        AND o.longitude = '-94.5343273'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'D''Amour Family Medicine'
        AND o.latitude = '37.0562078'
        AND o.longitude = '-94.5343273'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'D''Amour Family Medicine'
        AND o.latitude = '37.0562078'
        AND o.longitude = '-94.5343273'));

COMMIT;
