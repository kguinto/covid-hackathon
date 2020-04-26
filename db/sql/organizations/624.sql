
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
      'Barlow Respiratory Hospital',
      '2000 Stadium Way
Los Angeles, CA 90026',
      'Los Angeles',
      'CA',
      '',
      'Unsure',
      '34.0757094',
      '-118.2481853'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Barlow Respiratory Hospital'
        AND o.latitude = '34.0757094'
        AND o.longitude = '-118.2481853'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Barlow Respiratory Hospital'
        AND o.latitude = '34.0757094'
        AND o.longitude = '-118.2481853'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Barlow Respiratory Hospital'
        AND o.latitude = '34.0757094'
        AND o.longitude = '-118.2481853'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Barlow Respiratory Hospital'
        AND o.latitude = '34.0757094'
        AND o.longitude = '-118.2481853'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Standard Precaution Mask',
    (SELECT id FROM organizations o
      WHERE o.name = 'Barlow Respiratory Hospital'
        AND o.latitude = '34.0757094'
        AND o.longitude = '-118.2481853'));

COMMIT;
