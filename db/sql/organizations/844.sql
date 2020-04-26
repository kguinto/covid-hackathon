
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
      'Jefferson Health- New Jersey',
      '367 Hurffville-Crosskeys Rd.
Sewell, NJ 08080',
      'Sewell',
      'NJ',
      'https://www.jeffersonhealth.org/coronavirus-covid-19/medical-supply-donation.html',
      'No',
      '39.7311223',
      '-75.0595176'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Jefferson Health- New Jersey'
        AND o.latitude = '39.7311223'
        AND o.longitude = '-75.0595176'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Jefferson Health- New Jersey'
        AND o.latitude = '39.7311223'
        AND o.longitude = '-75.0595176'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Jefferson Health- New Jersey'
        AND o.latitude = '39.7311223'
        AND o.longitude = '-75.0595176'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Jefferson Health- New Jersey'
        AND o.latitude = '39.7311223'
        AND o.longitude = '-75.0595176'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Jefferson Health- New Jersey'
        AND o.latitude = '39.7311223'
        AND o.longitude = '-75.0595176'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Jefferson Health- New Jersey'
        AND o.latitude = '39.7311223'
        AND o.longitude = '-75.0595176'));

COMMIT;
