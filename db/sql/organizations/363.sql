
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
      'Midwest Express Clinic',
      '40 75th St
Willowbrook, IL 60527',
      'Willowbrook',
      'IL',
      'Stay in your vehicle and call us at 630-581-5372, we will pick up curbside - thank you!',
      'Yes',
      '41.7528663',
      '-87.9459365'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Midwest Express Clinic'
        AND o.latitude = '41.7528663'
        AND o.longitude = '-87.9459365'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Midwest Express Clinic'
        AND o.latitude = '41.7528663'
        AND o.longitude = '-87.9459365'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Midwest Express Clinic'
        AND o.latitude = '41.7528663'
        AND o.longitude = '-87.9459365'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Midwest Express Clinic'
        AND o.latitude = '41.7528663'
        AND o.longitude = '-87.9459365'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Midwest Express Clinic'
        AND o.latitude = '41.7528663'
        AND o.longitude = '-87.9459365'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Midwest Express Clinic'
        AND o.latitude = '41.7528663'
        AND o.longitude = '-87.9459365'));

COMMIT;
