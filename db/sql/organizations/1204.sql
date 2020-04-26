
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
      'Richboro Rehabilitation and Nursing Center ',
      '253 Twining Ford Rd
Richboro, PA 18954',
      'Richboro',
      'PA',
      '',
      'Yes',
      '40.2274999',
      '-75.0002322'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Richboro Rehabilitation and Nursing Center '
        AND o.latitude = '40.2274999'
        AND o.longitude = '-75.0002322'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Richboro Rehabilitation and Nursing Center '
        AND o.latitude = '40.2274999'
        AND o.longitude = '-75.0002322'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Richboro Rehabilitation and Nursing Center '
        AND o.latitude = '40.2274999'
        AND o.longitude = '-75.0002322'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Richboro Rehabilitation and Nursing Center '
        AND o.latitude = '40.2274999'
        AND o.longitude = '-75.0002322'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Richboro Rehabilitation and Nursing Center '
        AND o.latitude = '40.2274999'
        AND o.longitude = '-75.0002322'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Richboro Rehabilitation and Nursing Center '
        AND o.latitude = '40.2274999'
        AND o.longitude = '-75.0002322'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Richboro Rehabilitation and Nursing Center '
        AND o.latitude = '40.2274999'
        AND o.longitude = '-75.0002322'));

COMMIT;
