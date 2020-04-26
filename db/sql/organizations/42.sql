
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
      'Kaiser Permanente - Antioch;  Kaiser Permanente - Walnut Creek',
      '1514 Grant Street
Berkeley, CA 94703',
      'Berkeley',
      'CA',
      'Drop off at private residence of volunteer (hospital staff member).',
      'Yes',
      '37.8787718',
      '-122.2763104'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Antioch;  Kaiser Permanente - Walnut Creek'
        AND o.latitude = '37.8787718'
        AND o.longitude = '-122.2763104'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Antioch;  Kaiser Permanente - Walnut Creek'
        AND o.latitude = '37.8787718'
        AND o.longitude = '-122.2763104'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Antioch;  Kaiser Permanente - Walnut Creek'
        AND o.latitude = '37.8787718'
        AND o.longitude = '-122.2763104'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Antioch;  Kaiser Permanente - Walnut Creek'
        AND o.latitude = '37.8787718'
        AND o.longitude = '-122.2763104'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Antioch;  Kaiser Permanente - Walnut Creek'
        AND o.latitude = '37.8787718'
        AND o.longitude = '-122.2763104'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('PAPPR',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Antioch;  Kaiser Permanente - Walnut Creek'
        AND o.latitude = '37.8787718'
        AND o.longitude = '-122.2763104'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('CAPRS',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Antioch;  Kaiser Permanente - Walnut Creek'
        AND o.latitude = '37.8787718'
        AND o.longitude = '-122.2763104'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Antioch;  Kaiser Permanente - Walnut Creek'
        AND o.latitude = '37.8787718'
        AND o.longitude = '-122.2763104'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('swabs',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Antioch;  Kaiser Permanente - Walnut Creek'
        AND o.latitude = '37.8787718'
        AND o.longitude = '-122.2763104'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Antioch;  Kaiser Permanente - Walnut Creek'
        AND o.latitude = '37.8787718'
        AND o.longitude = '-122.2763104'));

COMMIT;
