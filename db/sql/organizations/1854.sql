
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
      'Vascular Institute / Advanced Wound Care Institute ',
      '6036 N 19th Ave #204
Phoenix, AZ 85015',
      'Phoenix ',
      'AZ',
      'mailing address ',
      'Yes',
      '33.5257572',
      '-112.1009942'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Vascular Institute / Advanced Wound Care Institute '
        AND o.latitude = '33.5257572'
        AND o.longitude = '-112.1009942'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Vascular Institute / Advanced Wound Care Institute '
        AND o.latitude = '33.5257572'
        AND o.longitude = '-112.1009942'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Vascular Institute / Advanced Wound Care Institute '
        AND o.latitude = '33.5257572'
        AND o.longitude = '-112.1009942'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Vascular Institute / Advanced Wound Care Institute '
        AND o.latitude = '33.5257572'
        AND o.longitude = '-112.1009942'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Vascular Institute / Advanced Wound Care Institute '
        AND o.latitude = '33.5257572'
        AND o.longitude = '-112.1009942'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Vascular Institute / Advanced Wound Care Institute '
        AND o.latitude = '33.5257572'
        AND o.longitude = '-112.1009942'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Vascular Institute / Advanced Wound Care Institute '
        AND o.latitude = '33.5257572'
        AND o.longitude = '-112.1009942'));

COMMIT;
