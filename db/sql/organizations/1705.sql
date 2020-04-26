
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
      'UHS Wilson Medical Center',
      '33 Harrison St
Johnson City, NY 13907',
      'Johnson City ',
      'NY',
      'ATT Kristina Smith, kristina.smith@ny.uhs.org',
      'Yes',
      '42.1142391',
      '-75.9583893'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'UHS Wilson Medical Center'
        AND o.latitude = '42.1142391'
        AND o.longitude = '-75.9583893'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'UHS Wilson Medical Center'
        AND o.latitude = '42.1142391'
        AND o.longitude = '-75.9583893'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'UHS Wilson Medical Center'
        AND o.latitude = '42.1142391'
        AND o.longitude = '-75.9583893'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'UHS Wilson Medical Center'
        AND o.latitude = '42.1142391'
        AND o.longitude = '-75.9583893'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'UHS Wilson Medical Center'
        AND o.latitude = '42.1142391'
        AND o.longitude = '-75.9583893'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'UHS Wilson Medical Center'
        AND o.latitude = '42.1142391'
        AND o.longitude = '-75.9583893'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'UHS Wilson Medical Center'
        AND o.latitude = '42.1142391'
        AND o.longitude = '-75.9583893'));

COMMIT;
