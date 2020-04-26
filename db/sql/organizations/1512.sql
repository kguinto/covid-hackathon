
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
      'Pacific Gardens Nursing and Rehab Center',
      '577 S Peach Ave
Fresno, CA 93727',
      'Fresno',
      'CA',
      'Attn: Damian Etzler, Pacific Gardens Nursing and Rehab. Center 577 South Peach Ave, Fresno, California  93727',
      'Yes',
      '36.7369939',
      '-119.7174015'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pacific Gardens Nursing and Rehab Center'
        AND o.latitude = '36.7369939'
        AND o.longitude = '-119.7174015'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pacific Gardens Nursing and Rehab Center'
        AND o.latitude = '36.7369939'
        AND o.longitude = '-119.7174015'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pacific Gardens Nursing and Rehab Center'
        AND o.latitude = '36.7369939'
        AND o.longitude = '-119.7174015'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pacific Gardens Nursing and Rehab Center'
        AND o.latitude = '36.7369939'
        AND o.longitude = '-119.7174015'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pacific Gardens Nursing and Rehab Center'
        AND o.latitude = '36.7369939'
        AND o.longitude = '-119.7174015'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pacific Gardens Nursing and Rehab Center'
        AND o.latitude = '36.7369939'
        AND o.longitude = '-119.7174015'));

COMMIT;
