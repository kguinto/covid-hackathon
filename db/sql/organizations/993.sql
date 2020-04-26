
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
      'Grand River Medical Group',
      '1515 Delhi St #100
Dubuque, IA 52001',
      'Dubuque',
      'IA',
      'Drop off or mail to above address. Attention: Kayla Hopson, COO',
      'Yes',
      '42.4976383',
      '-90.6864231'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Grand River Medical Group'
        AND o.latitude = '42.4976383'
        AND o.longitude = '-90.6864231'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Grand River Medical Group'
        AND o.latitude = '42.4976383'
        AND o.longitude = '-90.6864231'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Grand River Medical Group'
        AND o.latitude = '42.4976383'
        AND o.longitude = '-90.6864231'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Grand River Medical Group'
        AND o.latitude = '42.4976383'
        AND o.longitude = '-90.6864231'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Grand River Medical Group'
        AND o.latitude = '42.4976383'
        AND o.longitude = '-90.6864231'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Grand River Medical Group'
        AND o.latitude = '42.4976383'
        AND o.longitude = '-90.6864231'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Grand River Medical Group'
        AND o.latitude = '42.4976383'
        AND o.longitude = '-90.6864231'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Grand River Medical Group'
        AND o.latitude = '42.4976383'
        AND o.longitude = '-90.6864231'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Grand River Medical Group'
        AND o.latitude = '42.4976383'
        AND o.longitude = '-90.6864231'));

COMMIT;
