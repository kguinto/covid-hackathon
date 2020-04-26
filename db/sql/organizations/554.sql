
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
      'ConvenientMD Urgent Care',
      '86 Taunton St
Plainville, MA 02762',
      'Plainville',
      'MA',
      'Drop off or mail',
      'Unsure',
      '42.0281344',
      '-71.3104813'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'ConvenientMD Urgent Care'
        AND o.latitude = '42.0281344'
        AND o.longitude = '-71.3104813'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'ConvenientMD Urgent Care'
        AND o.latitude = '42.0281344'
        AND o.longitude = '-71.3104813'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'ConvenientMD Urgent Care'
        AND o.latitude = '42.0281344'
        AND o.longitude = '-71.3104813'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'ConvenientMD Urgent Care'
        AND o.latitude = '42.0281344'
        AND o.longitude = '-71.3104813'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'ConvenientMD Urgent Care'
        AND o.latitude = '42.0281344'
        AND o.longitude = '-71.3104813'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'ConvenientMD Urgent Care'
        AND o.latitude = '42.0281344'
        AND o.longitude = '-71.3104813'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'ConvenientMD Urgent Care'
        AND o.latitude = '42.0281344'
        AND o.longitude = '-71.3104813'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'ConvenientMD Urgent Care'
        AND o.latitude = '42.0281344'
        AND o.longitude = '-71.3104813'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'ConvenientMD Urgent Care'
        AND o.latitude = '42.0281344'
        AND o.longitude = '-71.3104813'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'ConvenientMD Urgent Care'
        AND o.latitude = '42.0281344'
        AND o.longitude = '-71.3104813'));

COMMIT;
