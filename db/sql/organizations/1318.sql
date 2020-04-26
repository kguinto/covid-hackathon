
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
      'Mountain Terrace Senior Living',
      '3312 Terrace Ct
Wausau, WI 54401',
      'Wausau',
      'WI',
      'Please ring the doorbell and someone will help you.  ',
      'Yes',
      '44.9569448',
      '-89.6783518'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mountain Terrace Senior Living'
        AND o.latitude = '44.9569448'
        AND o.longitude = '-89.6783518'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mountain Terrace Senior Living'
        AND o.latitude = '44.9569448'
        AND o.longitude = '-89.6783518'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mountain Terrace Senior Living'
        AND o.latitude = '44.9569448'
        AND o.longitude = '-89.6783518'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mountain Terrace Senior Living'
        AND o.latitude = '44.9569448'
        AND o.longitude = '-89.6783518'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mountain Terrace Senior Living'
        AND o.latitude = '44.9569448'
        AND o.longitude = '-89.6783518'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mountain Terrace Senior Living'
        AND o.latitude = '44.9569448'
        AND o.longitude = '-89.6783518'));

COMMIT;
