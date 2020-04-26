
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
      'Community Options, Inc.',
      '7615 Standish Place
Derwood, MD 20855',
      'Derwood',
      'MD',
      'The donations can be dropped at our office. Knock on door and a staff will confirm we are present to receive the donations.',
      'Yes',
      '39.10916',
      '-77.15493'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options, Inc.'
        AND o.latitude = '39.10916'
        AND o.longitude = '-77.15493'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options, Inc.'
        AND o.latitude = '39.10916'
        AND o.longitude = '-77.15493'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options, Inc.'
        AND o.latitude = '39.10916'
        AND o.longitude = '-77.15493'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options, Inc.'
        AND o.latitude = '39.10916'
        AND o.longitude = '-77.15493'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options, Inc.'
        AND o.latitude = '39.10916'
        AND o.longitude = '-77.15493'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options, Inc.'
        AND o.latitude = '39.10916'
        AND o.longitude = '-77.15493'));

COMMIT;
