
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
      'Health Alliance Clinton Hospital',
      '60 Hospital Rd
Leominster, MA 01453',
      'Leominster',
      'MA',
      '60 Hospital Road',
      'Yes',
      '42.5410183',
      '-71.761278'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Health Alliance Clinton Hospital'
        AND o.latitude = '42.5410183'
        AND o.longitude = '-71.761278'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Health Alliance Clinton Hospital'
        AND o.latitude = '42.5410183'
        AND o.longitude = '-71.761278'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Health Alliance Clinton Hospital'
        AND o.latitude = '42.5410183'
        AND o.longitude = '-71.761278'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Health Alliance Clinton Hospital'
        AND o.latitude = '42.5410183'
        AND o.longitude = '-71.761278'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Health Alliance Clinton Hospital'
        AND o.latitude = '42.5410183'
        AND o.longitude = '-71.761278'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Health Alliance Clinton Hospital'
        AND o.latitude = '42.5410183'
        AND o.longitude = '-71.761278'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Health Alliance Clinton Hospital'
        AND o.latitude = '42.5410183'
        AND o.longitude = '-71.761278'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Health Alliance Clinton Hospital'
        AND o.latitude = '42.5410183'
        AND o.longitude = '-71.761278'));

COMMIT;
