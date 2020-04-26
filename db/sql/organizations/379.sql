
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
      'Tucson ER and Hospital',
      '4575 E Broadway Blvd
Tucson, AZ 85711',
      'Tucson',
      'AZ',
      '',
      'Yes',
      '32.2221731',
      '-110.8948742'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Tucson ER and Hospital'
        AND o.latitude = '32.2221731'
        AND o.longitude = '-110.8948742'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Tucson ER and Hospital'
        AND o.latitude = '32.2221731'
        AND o.longitude = '-110.8948742'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Tucson ER and Hospital'
        AND o.latitude = '32.2221731'
        AND o.longitude = '-110.8948742'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Tucson ER and Hospital'
        AND o.latitude = '32.2221731'
        AND o.longitude = '-110.8948742'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Tucson ER and Hospital'
        AND o.latitude = '32.2221731'
        AND o.longitude = '-110.8948742'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Tucson ER and Hospital'
        AND o.latitude = '32.2221731'
        AND o.longitude = '-110.8948742'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Tucson ER and Hospital'
        AND o.latitude = '32.2221731'
        AND o.longitude = '-110.8948742'));

COMMIT;
