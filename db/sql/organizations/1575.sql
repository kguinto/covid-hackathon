
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
      'El Proyecto del Barrio',
      '20800 Sherman Way
Winnetka, CA 91306',
      'Canoga park',
      'CA',
      'Front desk',
      'Yes',
      '34.2006098',
      '-118.5864904'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'El Proyecto del Barrio'
        AND o.latitude = '34.2006098'
        AND o.longitude = '-118.5864904'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'El Proyecto del Barrio'
        AND o.latitude = '34.2006098'
        AND o.longitude = '-118.5864904'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'El Proyecto del Barrio'
        AND o.latitude = '34.2006098'
        AND o.longitude = '-118.5864904'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'El Proyecto del Barrio'
        AND o.latitude = '34.2006098'
        AND o.longitude = '-118.5864904'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'El Proyecto del Barrio'
        AND o.latitude = '34.2006098'
        AND o.longitude = '-118.5864904'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'El Proyecto del Barrio'
        AND o.latitude = '34.2006098'
        AND o.longitude = '-118.5864904'));

COMMIT;
