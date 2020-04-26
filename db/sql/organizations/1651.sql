
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
      'Union General Hospital',
      '901 James Ave
Farmerville, LA 71241',
      'Farmerville',
      'LA',
      'Drop off at Purchasing loading dock',
      'Yes',
      '32.7877365',
      '-92.3919305'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Union General Hospital'
        AND o.latitude = '32.7877365'
        AND o.longitude = '-92.3919305'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Union General Hospital'
        AND o.latitude = '32.7877365'
        AND o.longitude = '-92.3919305'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Union General Hospital'
        AND o.latitude = '32.7877365'
        AND o.longitude = '-92.3919305'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Union General Hospital'
        AND o.latitude = '32.7877365'
        AND o.longitude = '-92.3919305'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Union General Hospital'
        AND o.latitude = '32.7877365'
        AND o.longitude = '-92.3919305'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Union General Hospital'
        AND o.latitude = '32.7877365'
        AND o.longitude = '-92.3919305'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Union General Hospital'
        AND o.latitude = '32.7877365'
        AND o.longitude = '-92.3919305'));

COMMIT;
