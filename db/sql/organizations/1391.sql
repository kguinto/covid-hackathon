
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
      'Brookdale Hospital',
      '1767 Clay Ave
The Bronx, NY 10457',
      'Bronx',
      'NY',
      '1767 Clay Ave',
      'Yes',
      '40.845946',
      '-73.9050838'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brookdale Hospital'
        AND o.latitude = '40.845946'
        AND o.longitude = '-73.9050838'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brookdale Hospital'
        AND o.latitude = '40.845946'
        AND o.longitude = '-73.9050838'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brookdale Hospital'
        AND o.latitude = '40.845946'
        AND o.longitude = '-73.9050838'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brookdale Hospital'
        AND o.latitude = '40.845946'
        AND o.longitude = '-73.9050838'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brookdale Hospital'
        AND o.latitude = '40.845946'
        AND o.longitude = '-73.9050838'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brookdale Hospital'
        AND o.latitude = '40.845946'
        AND o.longitude = '-73.9050838'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brookdale Hospital'
        AND o.latitude = '40.845946'
        AND o.longitude = '-73.9050838'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brookdale Hospital'
        AND o.latitude = '40.845946'
        AND o.longitude = '-73.9050838'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brookdale Hospital'
        AND o.latitude = '40.845946'
        AND o.longitude = '-73.9050838'));

COMMIT;
