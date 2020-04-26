
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
      'Rearden Internal Medicine and Geriatrics LLC',
      '121 S Jefferies Blvd
Walterboro, SC 29488',
      'Walterboro',
      'SC',
      '121 S Jefferies Blvd',
      'No',
      '32.9018769',
      '-80.666916'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rearden Internal Medicine and Geriatrics LLC'
        AND o.latitude = '32.9018769'
        AND o.longitude = '-80.666916'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rearden Internal Medicine and Geriatrics LLC'
        AND o.latitude = '32.9018769'
        AND o.longitude = '-80.666916'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rearden Internal Medicine and Geriatrics LLC'
        AND o.latitude = '32.9018769'
        AND o.longitude = '-80.666916'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rearden Internal Medicine and Geriatrics LLC'
        AND o.latitude = '32.9018769'
        AND o.longitude = '-80.666916'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rearden Internal Medicine and Geriatrics LLC'
        AND o.latitude = '32.9018769'
        AND o.longitude = '-80.666916'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rearden Internal Medicine and Geriatrics LLC'
        AND o.latitude = '32.9018769'
        AND o.longitude = '-80.666916'));

COMMIT;
