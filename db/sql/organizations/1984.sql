
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
      'ManorCare Peters Township',
      '113 W McMurray Rd
Canonsburg, PA 15317',
      'McMurray',
      'PA',
      'Drop off between main doors',
      'Yes',
      '40.2726388',
      '-80.1296862'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'ManorCare Peters Township'
        AND o.latitude = '40.2726388'
        AND o.longitude = '-80.1296862'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'ManorCare Peters Township'
        AND o.latitude = '40.2726388'
        AND o.longitude = '-80.1296862'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'ManorCare Peters Township'
        AND o.latitude = '40.2726388'
        AND o.longitude = '-80.1296862'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'ManorCare Peters Township'
        AND o.latitude = '40.2726388'
        AND o.longitude = '-80.1296862'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'ManorCare Peters Township'
        AND o.latitude = '40.2726388'
        AND o.longitude = '-80.1296862'));

COMMIT;
