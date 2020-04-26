
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
      'Municipality of Anchorage',
      '9191 Old Seward Highway
Anchorage, AK 99515',
      'Anchorage',
      'AK',
      'The following PPE is needed immediately: Please do not give expired goods

Nitrile exam gloves (NO LATEX GLOVES)
N95 masks
Surgical masks
Medical Gowns
Face Shields which protect eyes

Please take Personal Protective Equipment to:
CrossFit Alaska
9191 Old Seward Highway
Entrance faces Scooter Ave
 
Hours of donation: 9:00 AM- 5:00 PM 7 days a week.
For questions, please email covid-19@anchorageak.gov or call 907-343-4019',
      'Yes',
      '61.137909',
      '-149.8624687'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Municipality of Anchorage'
        AND o.latitude = '61.137909'
        AND o.longitude = '-149.8624687'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Municipality of Anchorage'
        AND o.latitude = '61.137909'
        AND o.longitude = '-149.8624687'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Municipality of Anchorage'
        AND o.latitude = '61.137909'
        AND o.longitude = '-149.8624687'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Municipality of Anchorage'
        AND o.latitude = '61.137909'
        AND o.longitude = '-149.8624687'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Municipality of Anchorage'
        AND o.latitude = '61.137909'
        AND o.longitude = '-149.8624687'));

COMMIT;
