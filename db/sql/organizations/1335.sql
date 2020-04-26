
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
      'Holy Name Hospital ',
      '88 Chadwick Rd
Teaneck, NJ 07666',
      'Teaneck ',
      'NJ',
      'Bring to drop off ',
      'Yes',
      '40.8840542',
      '-74.0111227'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Holy Name Hospital '
        AND o.latitude = '40.8840542'
        AND o.longitude = '-74.0111227'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Holy Name Hospital '
        AND o.latitude = '40.8840542'
        AND o.longitude = '-74.0111227'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Holy Name Hospital '
        AND o.latitude = '40.8840542'
        AND o.longitude = '-74.0111227'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Holy Name Hospital '
        AND o.latitude = '40.8840542'
        AND o.longitude = '-74.0111227'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Holy Name Hospital '
        AND o.latitude = '40.8840542'
        AND o.longitude = '-74.0111227'));

COMMIT;
