
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
      'Trappe Fire Co. EMS',
      '20 W. 5th Ave.
Trappe, PA 19426',
      'Trappe',
      'PA',
      'Drop off at Front door and ring doorbell.',
      'Yes',
      '40.1981576',
      '-75.4771981'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Trappe Fire Co. EMS'
        AND o.latitude = '40.1981576'
        AND o.longitude = '-75.4771981'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Trappe Fire Co. EMS'
        AND o.latitude = '40.1981576'
        AND o.longitude = '-75.4771981'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Trappe Fire Co. EMS'
        AND o.latitude = '40.1981576'
        AND o.longitude = '-75.4771981'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Trappe Fire Co. EMS'
        AND o.latitude = '40.1981576'
        AND o.longitude = '-75.4771981'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Trappe Fire Co. EMS'
        AND o.latitude = '40.1981576'
        AND o.longitude = '-75.4771981'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Trappe Fire Co. EMS'
        AND o.latitude = '40.1981576'
        AND o.longitude = '-75.4771981'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Trappe Fire Co. EMS'
        AND o.latitude = '40.1981576'
        AND o.longitude = '-75.4771981'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Trappe Fire Co. EMS'
        AND o.latitude = '40.1981576'
        AND o.longitude = '-75.4771981'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Trappe Fire Co. EMS'
        AND o.latitude = '40.1981576'
        AND o.longitude = '-75.4771981'));

COMMIT;
