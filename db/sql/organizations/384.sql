
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
      'Huntington Hospital',
      '100 W. California Blvd
Pasadena, CA 91105',
      'Pasadena',
      'CA',
      '100 W. California Blvd
Pasadena, CA 91105',
      'No',
      '34.1325954',
      '-118.1525463'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Huntington Hospital'
        AND o.latitude = '34.1325954'
        AND o.longitude = '-118.1525463'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Huntington Hospital'
        AND o.latitude = '34.1325954'
        AND o.longitude = '-118.1525463'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Huntington Hospital'
        AND o.latitude = '34.1325954'
        AND o.longitude = '-118.1525463'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Huntington Hospital'
        AND o.latitude = '34.1325954'
        AND o.longitude = '-118.1525463'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Huntington Hospital'
        AND o.latitude = '34.1325954'
        AND o.longitude = '-118.1525463'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Huntington Hospital'
        AND o.latitude = '34.1325954'
        AND o.longitude = '-118.1525463'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Huntington Hospital'
        AND o.latitude = '34.1325954'
        AND o.longitude = '-118.1525463'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Huntington Hospital'
        AND o.latitude = '34.1325954'
        AND o.longitude = '-118.1525463'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Huntington Hospital'
        AND o.latitude = '34.1325954'
        AND o.longitude = '-118.1525463'));

COMMIT;
