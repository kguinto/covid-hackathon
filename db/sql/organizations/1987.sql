
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
      'Decatur Gastroenterlogy ',
      '1103 15th Ave SE
Decatur, AL 35601',
      'Decatur',
      'AL',
      'As above',
      'No',
      '34.5908106',
      '-86.9690178'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Decatur Gastroenterlogy '
        AND o.latitude = '34.5908106'
        AND o.longitude = '-86.9690178'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Decatur Gastroenterlogy '
        AND o.latitude = '34.5908106'
        AND o.longitude = '-86.9690178'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Decatur Gastroenterlogy '
        AND o.latitude = '34.5908106'
        AND o.longitude = '-86.9690178'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Decatur Gastroenterlogy '
        AND o.latitude = '34.5908106'
        AND o.longitude = '-86.9690178'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Decatur Gastroenterlogy '
        AND o.latitude = '34.5908106'
        AND o.longitude = '-86.9690178'));

COMMIT;
