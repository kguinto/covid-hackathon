
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
      'Pacific Coast Manor',
      '1935 Wharf Rd
Capitola, CA 95010',
      'Capitola',
      'CA',
      'We have our facility locked. There is an employee at the front door 6am - 6:30 pm Please knock and they will accept the PPE.',
      'No',
      '36.9773376',
      '-121.9579316'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pacific Coast Manor'
        AND o.latitude = '36.9773376'
        AND o.longitude = '-121.9579316'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pacific Coast Manor'
        AND o.latitude = '36.9773376'
        AND o.longitude = '-121.9579316'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pacific Coast Manor'
        AND o.latitude = '36.9773376'
        AND o.longitude = '-121.9579316'));

COMMIT;
