
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
      'Garfield Medical Center',
      '525 N Garfield Ave
Monterey Park, CA 91754',
      'Monterey Park',
      'CA',
      'ICU | Emergency Room',
      'No',
      '34.0678947',
      '-118.1238043'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Garfield Medical Center'
        AND o.latitude = '34.0678947'
        AND o.longitude = '-118.1238043'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Garfield Medical Center'
        AND o.latitude = '34.0678947'
        AND o.longitude = '-118.1238043'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Garfield Medical Center'
        AND o.latitude = '34.0678947'
        AND o.longitude = '-118.1238043'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Garfield Medical Center'
        AND o.latitude = '34.0678947'
        AND o.longitude = '-118.1238043'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Garfield Medical Center'
        AND o.latitude = '34.0678947'
        AND o.longitude = '-118.1238043'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Garfield Medical Center'
        AND o.latitude = '34.0678947'
        AND o.longitude = '-118.1238043'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Garfield Medical Center'
        AND o.latitude = '34.0678947'
        AND o.longitude = '-118.1238043'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Garfield Medical Center'
        AND o.latitude = '34.0678947'
        AND o.longitude = '-118.1238043'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Garfield Medical Center'
        AND o.latitude = '34.0678947'
        AND o.longitude = '-118.1238043'));

COMMIT;
