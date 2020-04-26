
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
      'Encompass Health Rehab Hospital of Dayton',
      ' 1 Elizabeth Pl
Dayton, OH 45417',
      'Dayton',
      'OH',
      'Attn: Natasha Mumford',
      'Yes',
      '39.7479641',
      '-84.1998303'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Encompass Health Rehab Hospital of Dayton'
        AND o.latitude = '39.7479641'
        AND o.longitude = '-84.1998303'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Encompass Health Rehab Hospital of Dayton'
        AND o.latitude = '39.7479641'
        AND o.longitude = '-84.1998303'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Encompass Health Rehab Hospital of Dayton'
        AND o.latitude = '39.7479641'
        AND o.longitude = '-84.1998303'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Encompass Health Rehab Hospital of Dayton'
        AND o.latitude = '39.7479641'
        AND o.longitude = '-84.1998303'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Encompass Health Rehab Hospital of Dayton'
        AND o.latitude = '39.7479641'
        AND o.longitude = '-84.1998303'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Encompass Health Rehab Hospital of Dayton'
        AND o.latitude = '39.7479641'
        AND o.longitude = '-84.1998303'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Encompass Health Rehab Hospital of Dayton'
        AND o.latitude = '39.7479641'
        AND o.longitude = '-84.1998303'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Encompass Health Rehab Hospital of Dayton'
        AND o.latitude = '39.7479641'
        AND o.longitude = '-84.1998303'));

COMMIT;
