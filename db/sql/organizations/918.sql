
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
      'Pacific Coast Hospice',
      '2919 S Ellsworth Rd Ste 129
Mesa, AZ 85212',
      'Mesa',
      'AZ',
      'Please leave with Front Desk',
      'Yes',
      '33.3627038',
      '-111.6340944'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pacific Coast Hospice'
        AND o.latitude = '33.3627038'
        AND o.longitude = '-111.6340944'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pacific Coast Hospice'
        AND o.latitude = '33.3627038'
        AND o.longitude = '-111.6340944'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pacific Coast Hospice'
        AND o.latitude = '33.3627038'
        AND o.longitude = '-111.6340944'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pacific Coast Hospice'
        AND o.latitude = '33.3627038'
        AND o.longitude = '-111.6340944'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pacific Coast Hospice'
        AND o.latitude = '33.3627038'
        AND o.longitude = '-111.6340944'));

COMMIT;
