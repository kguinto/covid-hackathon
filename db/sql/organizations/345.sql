
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
      'Mission Home Care',
      '38332 Daughtery Rd
Zephyrhills, FL 33540',
      'Zephyrhills',
      'FL',
      '',
      'Yes',
      '28.258857',
      '-82.18222'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mission Home Care'
        AND o.latitude = '28.258857'
        AND o.longitude = '-82.18222'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mission Home Care'
        AND o.latitude = '28.258857'
        AND o.longitude = '-82.18222'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mission Home Care'
        AND o.latitude = '28.258857'
        AND o.longitude = '-82.18222'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mission Home Care'
        AND o.latitude = '28.258857'
        AND o.longitude = '-82.18222'));

COMMIT;
