
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
      'Questcare Medical Clinic ',
      '3591 McKinney St #100
Melissa, TX 75454',
      'Melissa',
      'TX',
      'Prefer Mail to Questcare ATTN:  Sheri Morris 3591 McKinney Street Suite 100 Melissa, TX 75454 - May do drop off at the front door during business hours.  ',
      'Yes',
      '33.2945103',
      '-96.5704356'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Questcare Medical Clinic '
        AND o.latitude = '33.2945103'
        AND o.longitude = '-96.5704356'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Questcare Medical Clinic '
        AND o.latitude = '33.2945103'
        AND o.longitude = '-96.5704356'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Questcare Medical Clinic '
        AND o.latitude = '33.2945103'
        AND o.longitude = '-96.5704356'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Questcare Medical Clinic '
        AND o.latitude = '33.2945103'
        AND o.longitude = '-96.5704356'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Questcare Medical Clinic '
        AND o.latitude = '33.2945103'
        AND o.longitude = '-96.5704356'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Questcare Medical Clinic '
        AND o.latitude = '33.2945103'
        AND o.longitude = '-96.5704356'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Questcare Medical Clinic '
        AND o.latitude = '33.2945103'
        AND o.longitude = '-96.5704356'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Questcare Medical Clinic '
        AND o.latitude = '33.2945103'
        AND o.longitude = '-96.5704356'));

COMMIT;
