
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
      'Hematology/OncologyConsultants',
      '28078 Baxter Rd # 140
Murrieta, CA 92563',
      'Murrieta',
      'CA',
      'Please bring to suite 140',
      'Yes',
      '33.6150011',
      '-117.1670381'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hematology/OncologyConsultants'
        AND o.latitude = '33.6150011'
        AND o.longitude = '-117.1670381'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hematology/OncologyConsultants'
        AND o.latitude = '33.6150011'
        AND o.longitude = '-117.1670381'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hematology/OncologyConsultants'
        AND o.latitude = '33.6150011'
        AND o.longitude = '-117.1670381'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hematology/OncologyConsultants'
        AND o.latitude = '33.6150011'
        AND o.longitude = '-117.1670381'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hematology/OncologyConsultants'
        AND o.latitude = '33.6150011'
        AND o.longitude = '-117.1670381'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hematology/OncologyConsultants'
        AND o.latitude = '33.6150011'
        AND o.longitude = '-117.1670381'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hematology/OncologyConsultants'
        AND o.latitude = '33.6150011'
        AND o.longitude = '-117.1670381'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hematology/OncologyConsultants'
        AND o.latitude = '33.6150011'
        AND o.longitude = '-117.1670381'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hematology/OncologyConsultants'
        AND o.latitude = '33.6150011'
        AND o.longitude = '-117.1670381'));

COMMIT;
