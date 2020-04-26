
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
      '245 Hartford Ave
Bellingham, MA 02019',
      'Bellingham',
      'MA',
      'Mail',
      'Unsure',
      '42.1146632',
      '-71.4612433'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'ConvenientMD Urgent Care'
        AND o.latitude = '42.1146632'
        AND o.longitude = '-71.4612433'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'ConvenientMD Urgent Care'
        AND o.latitude = '42.1146632'
        AND o.longitude = '-71.4612433'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'ConvenientMD Urgent Care'
        AND o.latitude = '42.1146632'
        AND o.longitude = '-71.4612433'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'ConvenientMD Urgent Care'
        AND o.latitude = '42.1146632'
        AND o.longitude = '-71.4612433'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'ConvenientMD Urgent Care'
        AND o.latitude = '42.1146632'
        AND o.longitude = '-71.4612433'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'ConvenientMD Urgent Care'
        AND o.latitude = '42.1146632'
        AND o.longitude = '-71.4612433'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('EYE PROTECTION',
    (SELECT id FROM organizations o
      WHERE o.name = 'ConvenientMD Urgent Care'
        AND o.latitude = '42.1146632'
        AND o.longitude = '-71.4612433'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('WHATEVER ELSE IS AVAILABLE',
    (SELECT id FROM organizations o
      WHERE o.name = 'ConvenientMD Urgent Care'
        AND o.latitude = '42.1146632'
        AND o.longitude = '-71.4612433'));

COMMIT;
