
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
      'Seasons Largo',
      '4175 E Bay Dr
Clearwater, FL 33764',
      'Largo',
      'FL',
      'Call for curbside 727 330 7898',
      'Yes',
      '27.9158329',
      '-82.7443097'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Seasons Largo'
        AND o.latitude = '27.9158329'
        AND o.longitude = '-82.7443097'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Seasons Largo'
        AND o.latitude = '27.9158329'
        AND o.longitude = '-82.7443097'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Seasons Largo'
        AND o.latitude = '27.9158329'
        AND o.longitude = '-82.7443097'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Seasons Largo'
        AND o.latitude = '27.9158329'
        AND o.longitude = '-82.7443097'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Seasons Largo'
        AND o.latitude = '27.9158329'
        AND o.longitude = '-82.7443097'));

COMMIT;
