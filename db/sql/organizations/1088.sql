
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
      'Gateway Hospice',
      '103 2nd Ave NE
Clarion, IA 50525',
      'Clarion ',
      'IA',
      'Bring donations to our office M-F from 8:00am to 4:30pm. Knock on the door and someone will gladly retrieve your donation. Thank you.',
      'No',
      '42.7336141',
      '-93.7325208'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Gateway Hospice'
        AND o.latitude = '42.7336141'
        AND o.longitude = '-93.7325208'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Gateway Hospice'
        AND o.latitude = '42.7336141'
        AND o.longitude = '-93.7325208'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Gateway Hospice'
        AND o.latitude = '42.7336141'
        AND o.longitude = '-93.7325208'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Gateway Hospice'
        AND o.latitude = '42.7336141'
        AND o.longitude = '-93.7325208'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Gateway Hospice'
        AND o.latitude = '42.7336141'
        AND o.longitude = '-93.7325208'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Gateway Hospice'
        AND o.latitude = '42.7336141'
        AND o.longitude = '-93.7325208'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Gateway Hospice'
        AND o.latitude = '42.7336141'
        AND o.longitude = '-93.7325208'));

COMMIT;
