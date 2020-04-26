
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
      'Virginia Head and Neck Surgeons',
      '19455 Deerfield Ave # 301
Leesburg, VA 20176',
      'Leesburg',
      'VA',
      'Mail or drop off please!!!! we are in a high risk profession with exposure to the nose and throat and patients with a high viral load. Virginia Head and Neck Surgeons--19455 Deerfield Ave Suite 301--Leesburg, VA 20176. Phone 703 858-4439',
      'Yes',
      '39.0771466',
      '-77.4764034'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Virginia Head and Neck Surgeons'
        AND o.latitude = '39.0771466'
        AND o.longitude = '-77.4764034'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Virginia Head and Neck Surgeons'
        AND o.latitude = '39.0771466'
        AND o.longitude = '-77.4764034'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Virginia Head and Neck Surgeons'
        AND o.latitude = '39.0771466'
        AND o.longitude = '-77.4764034'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Virginia Head and Neck Surgeons'
        AND o.latitude = '39.0771466'
        AND o.longitude = '-77.4764034'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Virginia Head and Neck Surgeons'
        AND o.latitude = '39.0771466'
        AND o.longitude = '-77.4764034'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Virginia Head and Neck Surgeons'
        AND o.latitude = '39.0771466'
        AND o.longitude = '-77.4764034'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Virginia Head and Neck Surgeons'
        AND o.latitude = '39.0771466'
        AND o.longitude = '-77.4764034'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Virginia Head and Neck Surgeons'
        AND o.latitude = '39.0771466'
        AND o.longitude = '-77.4764034'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Virginia Head and Neck Surgeons'
        AND o.latitude = '39.0771466'
        AND o.longitude = '-77.4764034'));

COMMIT;
