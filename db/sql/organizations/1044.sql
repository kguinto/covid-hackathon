
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
      'Kadlec Clinic Hematology & Oncology',
      '7360 W Deschutes Ave
Kennewick, WA 99336',
      'Kennewick',
      'WA',
      'Attn: Karen DuBois',
      'Yes',
      '46.2133569',
      '-119.2216457'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kadlec Clinic Hematology & Oncology'
        AND o.latitude = '46.2133569'
        AND o.longitude = '-119.2216457'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kadlec Clinic Hematology & Oncology'
        AND o.latitude = '46.2133569'
        AND o.longitude = '-119.2216457'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kadlec Clinic Hematology & Oncology'
        AND o.latitude = '46.2133569'
        AND o.longitude = '-119.2216457'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kadlec Clinic Hematology & Oncology'
        AND o.latitude = '46.2133569'
        AND o.longitude = '-119.2216457'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kadlec Clinic Hematology & Oncology'
        AND o.latitude = '46.2133569'
        AND o.longitude = '-119.2216457'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kadlec Clinic Hematology & Oncology'
        AND o.latitude = '46.2133569'
        AND o.longitude = '-119.2216457'));

COMMIT;
