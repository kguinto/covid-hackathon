
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
      'Virginia Emergency Medicine Associates at Inova Fair Oaks Hospital',
      '3600 Joseph Siewick Dr
Fairfax, VA 22033',
      'Fairfax',
      'VA',
      'Unused masks only. Mail or dropoff. Pickup is possible, call Emergency at 703-391-3842 to coordinate.',
      'Only if new.',
      '38.8878198',
      '-77.3802472'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Virginia Emergency Medicine Associates at Inova Fair Oaks Hospital'
        AND o.latitude = '38.8878198'
        AND o.longitude = '-77.3802472'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Virginia Emergency Medicine Associates at Inova Fair Oaks Hospital'
        AND o.latitude = '38.8878198'
        AND o.longitude = '-77.3802472'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Virginia Emergency Medicine Associates at Inova Fair Oaks Hospital'
        AND o.latitude = '38.8878198'
        AND o.longitude = '-77.3802472'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Virginia Emergency Medicine Associates at Inova Fair Oaks Hospital'
        AND o.latitude = '38.8878198'
        AND o.longitude = '-77.3802472'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('PAPR hoods',
    (SELECT id FROM organizations o
      WHERE o.name = 'Virginia Emergency Medicine Associates at Inova Fair Oaks Hospital'
        AND o.latitude = '38.8878198'
        AND o.longitude = '-77.3802472'));

COMMIT;
