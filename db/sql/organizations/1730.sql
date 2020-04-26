
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
      'Inspira Medical Center Vineland',
      '453 Centerton Rd
Bridgeton, NJ 08302',
      'Bridgeton',
      'NJ',
      'It will be delivered to my personal address, I''m a worker at inspira. Leave in the mailbox or on the front porch',
      'Yes',
      '39.5109113',
      '-75.1774065'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Inspira Medical Center Vineland'
        AND o.latitude = '39.5109113'
        AND o.longitude = '-75.1774065'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Inspira Medical Center Vineland'
        AND o.latitude = '39.5109113'
        AND o.longitude = '-75.1774065'));

COMMIT;
