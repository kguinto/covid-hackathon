
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
      'Goleta Valley Cottage Hospital',
      '351 S Patterson Ave
Goleta, CA 93111',
      'Goleta',
      'CA',
      'Curbside 10-5 until further notice',
      'Yes',
      '34.4334194',
      '-119.8104104'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Goleta Valley Cottage Hospital'
        AND o.latitude = '34.4334194'
        AND o.longitude = '-119.8104104'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Goleta Valley Cottage Hospital'
        AND o.latitude = '34.4334194'
        AND o.longitude = '-119.8104104'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Goleta Valley Cottage Hospital'
        AND o.latitude = '34.4334194'
        AND o.longitude = '-119.8104104'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Goleta Valley Cottage Hospital'
        AND o.latitude = '34.4334194'
        AND o.longitude = '-119.8104104'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Goleta Valley Cottage Hospital'
        AND o.latitude = '34.4334194'
        AND o.longitude = '-119.8104104'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N99 Masks. Home-made masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Goleta Valley Cottage Hospital'
        AND o.latitude = '34.4334194'
        AND o.longitude = '-119.8104104'));

COMMIT;
