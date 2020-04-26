
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
      '1500 US-41
Schererville, IN 46375',
      'Schererville',
      'IN',
      'Stay in your vehicle and call us at 219-440-7373, we will pick up curbside - thank you! ',
      'Yes',
      '41.4944525',
      '-87.4715952'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Midwest Express Clinic'
        AND o.latitude = '41.4944525'
        AND o.longitude = '-87.4715952'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Midwest Express Clinic'
        AND o.latitude = '41.4944525'
        AND o.longitude = '-87.4715952'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Midwest Express Clinic'
        AND o.latitude = '41.4944525'
        AND o.longitude = '-87.4715952'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Midwest Express Clinic'
        AND o.latitude = '41.4944525'
        AND o.longitude = '-87.4715952'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Midwest Express Clinic'
        AND o.latitude = '41.4944525'
        AND o.longitude = '-87.4715952'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Midwest Express Clinic'
        AND o.latitude = '41.4944525'
        AND o.longitude = '-87.4715952'));

COMMIT;
