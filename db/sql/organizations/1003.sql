
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
      'Copps Hill Family Medicine',
      '77 Danbury Rd
Ridgefield, CT 06877',
      'Ridgefield',
      'CT',
      'Feel free to come in the office to drop off, or if you''d prefer, you can leave it outside the door during business hours and call the front desk to notify them to pick it up. (203) 431-6342.  If mailing: Copps Hill Family Medicine, 77 Danbury Rd., Ridgefield, CT 06877',
      'Yes',
      '41.2916625',
      '-73.4945506'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Copps Hill Family Medicine'
        AND o.latitude = '41.2916625'
        AND o.longitude = '-73.4945506'));

COMMIT;
