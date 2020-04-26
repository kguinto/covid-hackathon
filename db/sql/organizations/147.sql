
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
      'Summa Health, Lake Health West',
      '4535 Dressler Rd NW
Canton, OH 44718',
      'Canton',
      'OH',
      'Unused masks only. Address to "US Acute Care Solutions, Dr. Mark Slabinski." Can locally pick up or arrange for shipment. ',
      'Unsure',
      '40.8467684',
      '-81.4357319'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Summa Health, Lake Health West'
        AND o.latitude = '40.8467684'
        AND o.longitude = '-81.4357319'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Summa Health, Lake Health West'
        AND o.latitude = '40.8467684'
        AND o.longitude = '-81.4357319'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Summa Health, Lake Health West'
        AND o.latitude = '40.8467684'
        AND o.longitude = '-81.4357319'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Summa Health, Lake Health West'
        AND o.latitude = '40.8467684'
        AND o.longitude = '-81.4357319'));

COMMIT;
